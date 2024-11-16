-- Statements that users will commonly run on the database --

-- Add a new user
INSERT INTO users (username, email, password_hash, first_name, last_name)
VALUES (?, ?, ?, ?, ?);

-- Update user profile
UPDATE users
SET first_name = ?,
    last_name = ?,
    email = ?
WHERE user_id = ?;

-- Update user password
UPDATE users
SET password_hash = ?
WHERE user_id = ?;

-- Get user profile
SELECT user_id, username, email, first_name, last_name, created_at, last_login
FROM users
WHERE user_id = ?;

-- Update last login timestamp
UPDATE users
SET last_login = CURRENT_TIMESTAMP
WHERE user_id = ?;

-- Search users by name (first name, last name, or username)
SELECT user_id, username, first_name, last_name
FROM users
WHERE username LIKE '%?%'
   OR first_name LIKE '%?%'
   OR last_name LIKE '%?%'
COLLATE NOCASE;

-- Add a new artist
INSERT INTO artists (name, bio, formed_date)
VALUES (?, ?, ?);

-- Add a new album
INSERT INTO albums (title, release_date, album_type, total_tracks)
VALUES (?, ?, ?, ?);

-- Add a new song (using the last inserted album_id)
INSERT INTO songs (title, duration_seconds, release_date, album_id, explicit)
VALUES (?, ?, ?, last_insert_rowid(), ?);

-- Create a new playlist
INSERT INTO playlists (user_id, name, description)
VALUES (?, ?, ?);

-- Add a song to a playlist
INSERT INTO playlist_songs (playlist_id, song_id, position)
VALUES (
    ?,
    ?,
    (SELECT COALESCE(MAX(position), 0) + 1
     FROM playlist_songs
     WHERE playlist_id = ?)
);

-- Add a new genre
INSERT INTO genres (name, description)
VALUES (?, ?);

-- Mark a song as favorite
INSERT INTO user_songs (user_id, song_id)
VALUES (?, ?);

-- Search for songs by title (case-insensitive)
SELECT * FROM song_details
WHERE song_title LIKE '%?%' COLLATE NOCASE;

-- Get all songs by an artist
SELECT s.title, s.duration_seconds, al.title AS album
FROM songs s
JOIN song_artists sa ON s.song_id = sa.song_id
JOIN artists a ON sa.artist_id = a.artist_id
LEFT JOIN albums al ON s.album_id = al.album_id
WHERE a.name = ?
ORDER BY al.release_date, s.title;

-- Remove a song from a playlist
DELETE FROM playlist_songs
WHERE playlist_id = ? AND song_id = ?;

-- Get user's favorite songs with user details
SELECT
    u.username,
    s.title,
    a.name AS artist,
    al.title AS album
FROM user_songs us
JOIN users u ON us.user_id = u.user_id
JOIN songs s ON us.song_id = s.song_id
JOIN song_artists sa ON s.song_id = sa.song_id
JOIN artists a ON sa.artist_id = a.artist_id
LEFT JOIN albums al ON s.album_id = al.album_id
WHERE us.user_id = ?
ORDER BY us.favorited_at DESC;

-- Update playlist details
UPDATE playlists
SET name = ?, description = ?, is_public = ?
WHERE playlist_id = ? AND user_id = ?;

-- Get all albums by an artist with song count
SELECT
    al.title,
    al.release_date,
    COUNT(s.song_id) as track_count
FROM albums al
JOIN songs s ON al.album_id = s.album_id
JOIN song_artists sa ON s.song_id = sa.song_id
WHERE sa.artist_id = ?
GROUP BY al.album_id
ORDER BY al.release_date DESC;

-- Get user's playlist count and total songs
SELECT
    u.username,
    COUNT(DISTINCT p.playlist_id) as playlist_count,
    COUNT(DISTINCT ps.song_id) as total_songs
FROM users u
LEFT JOIN playlists p ON u.user_id = p.user_id
LEFT JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
WHERE u.user_id = ?
GROUP BY u.user_id;

-- Get recently added songs to any user's playlists
SELECT
    u.username,
    p.name AS playlist_name,
    s.title AS song_title,
    a.name AS artist_name,
    ps.added_at
FROM playlist_songs ps
JOIN playlists p ON ps.playlist_id = p.playlist_id
JOIN users u ON p.user_id = u.user_id
JOIN songs s ON ps.song_id = s.song_id
JOIN song_artists sa ON s.song_id = sa.song_id
JOIN artists a ON sa.artist_id = a.artist_id
ORDER BY ps.added_at DESC
LIMIT 50;

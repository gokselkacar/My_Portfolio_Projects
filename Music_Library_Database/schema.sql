-- Represents users creating an account
CREATE TABLE "users" (
    "user_id" INTEGER,
    "username" TEXT NOT NULL UNIQUE,
    "email" TEXT NOT NULL UNIQUE,
    "password_hash" TEXT NOT NULL UNIQUE,
    "first_name" TEXT NOT NULL UNIQUE,
    "last_name" TEXT NOT NULL UNIQUE,
    "created_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "last_login" DATETIME,
    PRIMARY KEY("user_id")
);

-- Represents artists
CREATE TABLE "artists" (
    "artist_id" INTEGER,
    "name" TEXT NOT NULL,
    "bio" TEXT,
    "formed_date" DATE,
    PRIMARY KEY("artist_id")
);

-- Represents albums
CREATE TABLE "albums" (
    "album_id" INTEGER,
    "title" TEXT NOT NULL,
    "release_date" DATE NOT NULL,
    "album_type" TEXT CHECK (album_type IN ('LP', 'EP', 'Single', 'Compilation')),
    "total_tracks" INTEGER CHECK (total_tracks > 0),
    PRIMARY KEY("album_id")
);

-- Represents songs
CREATE TABLE "songs" (
    "song_id" INTEGER,
    "title" TEXT NOT NULL,
    "duration_seconds" INTEGER NOT NULL CHECK (duration_seconds > 0),
    "release_date" DATE,
    "album_id" INTEGER,
    "explicit" BOOLEAN DEFAULT FALSE,
    PRIMARY KEY("song_id"),
    FOREIGN KEY("album_id") REFERENCES "albums"("album_id")
);

-- Represents users creating a playlist
CREATE TABLE "playlists" (
    "playlist_id" INTEGER,
    "user_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "created_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "is_public" BOOLEAN DEFAULT TRUE,
    PRIMARY KEY("playlist_id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("user_id")
);

-- Represents genre
CREATE TABLE "genres" (
    "genre_id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "description" TEXT,
    PRIMARY KEY("genre_id")
);

-- Create junction tables for many-to-many relationships
CREATE TABLE "song_artists" (
    "song_id" INTEGER,
    "artist_id" INTEGER,
    PRIMARY KEY("song_id", "artist_id"),
    FOREIGN KEY("song_id") REFERENCES "songs"("song_id"),
    FOREIGN KEY("artist_id") REFERENCES "artists"("artist_id")
);

CREATE TABLE "playlist_songs" (
    "playlist_id" INTEGER,
    "song_id" INTEGER,
    "added_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    "position" INTEGER NOT NULL,
    PRIMARY KEY("playlist_id", "song_id"),
    FOREIGN KEY("playlist_id") REFERENCES "playlists"("playlist_id"),
    FOREIGN KEY("song_id") REFERENCES "songs"("song_id")
);

CREATE TABLE "song_genres" (
    "song_id" INTEGER,
    "genre_id" INTEGER,
    PRIMARY KEY("song_id", "genre_id"),
    FOREIGN KEY("song_id") REFERENCES "songs"("song_id"),
    FOREIGN KEY ("genre_id") REFERENCES "genres"("genre_id")
);

CREATE TABLE "user_songs" (
    "user_id" INTEGER,
    "song_id" INTEGER,
    "favorited_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("user_id", "song_id"),
    FOREIGN KEY("user_id") REFERENCES "users"("user_id"),
    FOREIGN KEY("song_id") REFERENCES "songs"("song_id")
);

-- Create indexes for optimization
CREATE INDEX search_songs_title ON "songs"("title");
CREATE INDEX search_artists_name ON "artists"("name");
CREATE INDEX search_albums_release ON "albums"("release_date");
CREATE INDEX search_playlists_user ON "playlists"("user_id");
CREATE INDEX search_user_songs_user ON "user_songs"("user_id");
CREATE INDEX search_users_email ON "users"("email");

-- Create views for common queries
CREATE VIEW "song_details" AS
SELECT
    s.song_id,
    s.title AS song_title,
    s.duration_seconds,
    s.explicit,
    a.name AS artist_name,
    al.title AS album_title,
    al.release_date,
    g.name AS genre
FROM songs s
LEFT JOIN song_artists sa ON s.song_id = sa.song_id
LEFT JOIN artists a ON sa.artist_id = a.artist_id
LEFT JOIN albums al ON s.album_id = al.album_id
LEFT JOIN song_genres sg ON s.song_id = sg.song_id
LEFT JOIN genres g ON sg.genre_id = g.genre_id;

CREATE VIEW "playlist_contents" AS
SELECT
    p.playlist_id,
    p.name AS playlist_name,
    s.title AS song_title,
    a.name AS artist_name,
    ps.position,
    ps.added_at
FROM playlists p
JOIN playlist_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON ps.song_id = s.song_id
JOIN song_artists sa ON s.song_id = sa.song_id
JOIN artists a ON sa.artist_id = a.artist_id
ORDER BY p.playlist_id, ps.position;

CREATE VIEW "user_library" AS
SELECT
    u.user_id,
    u.username,
    s.title AS song_title,
    a.name AS artist_name,
    al.title AS album_title,
    us.favorited_at
FROM users u
JOIN user_songs us ON u.user_id = us.user_id
JOIN songs s ON us.song_id = s.song_id
JOIN song_artists sa ON s.song_id = sa.song_id
JOIN artists a ON sa.artist_id = a.artist_id
LEFT JOIN albums al ON s.album_id = al.album_id;

CREATE VIEW "popular_song" AS
SELECT
    s.title,
    a.name AS artist,
    al.title AS album,
    us.user_id,
    us.favorited_at
FROM user_songs us
JOIN songs s ON us.song_id = s.song_id
JOIN song_artists sa ON s.song_id = sa.song_id
JOIN artists a ON sa.artist_id = a.artist_id
LEFT JOIN albums al ON s.album_id = al.album_id
ORDER BY us.favorited_at DESC;


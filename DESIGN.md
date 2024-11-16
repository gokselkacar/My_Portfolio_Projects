# CS50’s Databases with SQL Final Project

## Scope

The purpose of this database is to manage and organize a personal music library similar to Spotify or Apple Music. It allows users to track their favorite songs, create playlists, and manage their music collection effectively.

**Included in scope:**

- Songs and their metadata (title, duration, release date)
- Artists and their information
- Albums and their details
- Playlists and user-created collections
- User listening history
- Genre classifications
- User ratings and favorites

**Outside of scope:**

- Music streaming functionality
- Audio file storage
- Payment processing
- Social networking features
- Lyrics storage
- Artist royalty tracking
- Regional availability rights
- Podcast content

## Functional Requirements

**Users should be able to:**

- Add, update, and delete songs from their library
- Create, modify, and delete playlists
- Add and remove songs from playlists
- Rate songs and mark favorites
- View their listening history
- Search for songs, artists, and albums
- Filter songs by various criteria (genre, artist, album, etc.)
- View detailed information about songs, artists, and albums

**Beyond scope:**

- Stream or download music
- Share playlists with other users
- Follow other users
- Purchase music
- Upload custom audio files
- Modify song metadata globally
- Create artist profiles
- Generate music recommendations

## Representation

Entities are captured in SQLite tables with the following schema.

### Entities

The database includes the following entities:

#### Users

The `users` table includes:

* `user_id`, which specifies the unique ID for the user as an `INTEGER`. This column thus has the `PRIMARY KEY` constraint applied, automatically aliasing to ROWID for auto-incrementing behavior.
* `username`, which specifies the user's display name as `TEXT`. This column has both `NOT NULL` and `UNIQUE` constraints to ensure each user has a distinct username.
* `email`, which stores the user's email address as `TEXT`. This column has both `NOT NULL` and `UNIQUE` constraints as each user must have a unique email address.
* `password_hash`, which stores the hashed password as `TEXT`. This column has the both `NOT NULL` and `UNIQUE` constraints as each user must have a unique password.
* `first_name`, which stores the user's first name as `TEXT`. This column has both `NOT NULL` and `UNIQUE` constraints to ensure each user has a distinct first name.
* `last_name`, which stores the user's last name as `TEXT`. This column has both `NOT NULL` and `UNIQUE` constraints to ensure each user has a distinct last name.
* `created_at`, which specifies when the user account was created as `DATETIME`. The default value is the current timestamp, as denoted by `DEFAULT CURRENT_TIMESTAMP`.
* `last_login`, which stores the timestamp of the user's most recent login as `DATETIME`. This column can be NULL as it will be updated after the user's first login.

#### Songs

The `songs` table includes:

* `song_id`, which specifies the unique ID for the song as an `INTEGER`. This column thus has the `PRIMARY KEY` constraint applied.
* `title`, which stores the song's title as `TEXT`. This column has the `NOT NULL` constraint as every song must have a title.
* `duration_seconds`, which stores the length of the song in seconds as an `INTEGER`. This column has the `NOT NULL` constraint and a `CHECK` constraint to ensure the duration is greater than 0.
* `release_date`, which stores the song's original release date as `DATE`.
* `album_id`, which is an `INTEGER` referencing the `id` column in the `albums` table. This column has a `FOREIGN KEY` constraint to maintain referential integrity.
* `explicit`, which indicates whether the song contains explicit content as `BOOLEAN`. This defaults to FALSE.

#### Artists

The `artists` table includes:

* `artist_id`, which specifies the unique ID for the artist as an `INTEGER`. This column thus has the `PRIMARY KEY` constraint applied.
* `name`, which stores the artist's name as `TEXT`. This column has the `NOT NULL` constraint as every artist must have a name.
* `bio`, which stores the artist's biography as `TEXT`. This column can be NULL as biographical information is optional.
* `formed_date`, which stores the date when the band/artist began their career as `DATE`. This column can be NULL as this information might not be available for all artists.

#### Albums

The `albums` table includes:

* `album_id`, which specifies the unique ID for the album as an `INTEGER`. This column thus has the `PRIMARY KEY` constraint applied.
* `title`, which stores the album's title as `TEXT`. This column has the `NOT NULL` constraint as every album must have a title.
* `release_date`, which stores the album's release date as `DATE`. This column has the `NOT NULL` constraint as every album must have a release date.
* `album_type`, which specifies the type of album as `TEXT`. This column has a `CHECK` constraint to ensure the type is one of: 'LP', 'EP', 'Single', or 'Compilation'.
* `total_tracks`, which stores the number of tracks on the album as `INTEGER`. This column has a `CHECK` constraint to ensure the value is greater than 0.

#### Playlists

The `playlists` table includes:

* `playlist_id`, which specifies the unique ID for the playlist as an `INTEGER`. This column thus has the `PRIMARY KEY` constraint applied.
* `user_id`, which references the creator of the playlist as an `INTEGER`. This column has both `NOT NULL` and `FOREIGN KEY` constraints, referencing the `id` column in the `users` table.
* `name`, which stores the playlist's name as `TEXT`. This column has the `NOT NULL` constraint as every playlist must have a name.
* `description`, which stores an optional description of the playlist as `TEXT`.
* `created_at`, which stores the creation timestamp as `DATETIME`, defaulting to the current timestamp.
* `is_public`, which indicates if the playlist is publicly visible as `BOOLEAN`, defaulting to TRUE.

#### Genres

The `genres` table includes:

* `genre_id`, which specifies the unique ID for the genre as an `INTEGER`. This column thus has the `PRIMARY KEY` constraint applied.
* `name`, which stores the genre name as `TEXT`. This column has both `NOT NULL` and `UNIQUE` constraints as each genre must have a unique name.
* `description`, which stores an optional description of the genre as `TEXT`.

### Junction Tables

The database includes several junction tables to represent many-to-many relationships:

##### song_artists

* `song_id`, which references the song as an `INTEGER` with `FOREIGN KEY` constraint.
* `artist_id`, which references the artist as an `INTEGER` with `FOREIGN KEY` constraint.
* The combination of `song_id` and `artist_id` forms the `PRIMARY KEY`.

##### playlist_songs

* `playlist_id`, which references the playlist as an `INTEGER` with `FOREIGN KEY` constraint.
* `song_id`, which references the song as an `INTEGER` with `FOREIGN KEY` constraint.
* `added_at`, which stores when the song was added to the playlist as `DATETIME`.
* `position`, which stores the song's position in the playlist as `INTEGER NOT NULL`.
* The combination of `playlist_id` and `song_id` forms the `PRIMARY KEY`.

##### song_genres

* `song_id`, which references the song as an `INTEGER` with `FOREIGN KEY` constraint.
* `genre_id`, which references the genre as an `INTEGER` with `FOREIGN KEY` constraint.
* The combination of `song_id` and `genre_id` forms the `PRIMARY KEY`.

##### user_songs

* `user_id`, which references the user as an `INTEGER` with `FOREIGN KEY` constraint.
* `song_id`, which references the song as an `INTEGER` with `FOREIGN KEY` constraint.
* `favorited_at`, which stores when the user favorited the song as `DATETIME`.
* The combination of `user_id` and `song_id` forms the `PRIMARY KEY`.

### Relationships

The below entity relationship diagram describes the relationships among the entities in the database.

![ER Diagram]![alt text](<Music Library ER Diagram.png>)

**As detailed by the diagram:**

* One user can create 0 to many playlists. A playlist is created by one and only one user.
* A user can favorite 0 to many songs through the user_songs junction table.
* A song can be included in 0 to many playlists through the playlist_songs junction table.
* A song can be performed by 1 to many artists through the song_artists junction table.
* A song belongs to 0 or 1 album (singles might not be part of an album).
* A song can have 1 to many genres through the song_genres junction table.
* An album contains 1 to many songs.

## Optimizations

**Indexes:**

- Song title and artist name (for fast search)
- User email (for quick login)
- Album release date (for chronological sorting)
- Genre name (for filtering)
- Playlist creation date (for recent playlists)


**Views:**

- SongDetails: Combines song info with artist and album details
- PlaylistContents: Shows all songs in each playlist with details
- UserLibrary: Displays user's favorited songs with full details
- PopularSongs: Aggregates song appearance in playlists

## Limitations

**Technical Limitations:**

- Cannot store actual audio files
- No support for variable artist roles (e.g., producer vs. featured artist)
- Limited handling of classical music (composer, conductor, orchestra)
- No version control for playlist changes
- Cannot represent complex album relationships (remasters, compilations)


**Data Model Limitations:**

- Single primary genre per song
- No support for seasonal/temporary playlists
- Cannot track listening progress within songs
- No representation of music videos or other media
- Limited support for different versions of same song
- No handling of regional variations in song availability

require 'pry'

class Song

@@count = 0
@@artists = []
@@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end
    def Song.count
      @@count
    end

    def Song.artists
        @@artists.uniq
    end

    def Song.genres
        @@genres.uniq
    end

    def Song.genre_count
        genres = {}
        @@genres.each do |genre|
            if genres[genre] == nil
                genres[genre] = 1
            else
                genres[genre] += 1
                
            end
        end
        return genres
    end

    def Song.artist_count
        artists = {}
        @@artists.each do |artist|
            if artists[artist] == nil
                artists[artist] = 1
            else
                artists[artist] += 1
                
            end
        end
        return artists
    end
end
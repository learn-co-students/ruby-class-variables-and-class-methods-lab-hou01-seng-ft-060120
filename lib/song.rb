require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        @@genres.each_with_object(Hash.new(0)) do | genre, hash |
            hash[genre] += 1
        end
    end

    def Song.artist_count
        @@artists.each_with_object(Hash.new(0)) do | artist, hash |
            hash[artist] += 1
        end
    end

end
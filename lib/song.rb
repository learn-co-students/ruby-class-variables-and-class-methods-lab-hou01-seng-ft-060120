class Song 

    attr_accessor = :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre 
        @@count += 1
        
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

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if (genre_count.include? genre)
                genre_count[genre] += 1
            else 
                genre_count[genre] = 1
            end
        end
        # if(genre_count.has_key? self.genres)
        #     genre_count[self.genres] += 1
        # else 
        #     genre_count[self.genres] = 1
        # end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if (artist_count.include? artist)
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1
            end
        end
        artist_count
    end



end
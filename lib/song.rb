class Song

  @@count = 0
  @@genres = [""]
  @@artists = [""]

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end

    def Song.count
      @@count
    end

    def Song.genres
      @@genres.uniq
    end

    def self.genre_count
      @@genres.inject(Hash.new(0)) { |genre_count, genre| genre_count[genre] += 1; genre_count}
    end

    def Song.artists
      @@artists.uniq
    end

    def Song.artist_count
      @@artists.inject(Hash.new(0)) { |artist_count, artist| artist_count[artist] += 1; artist_count}
    end

end

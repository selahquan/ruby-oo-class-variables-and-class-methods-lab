class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
            @@count += 1
            @@artists << artist
            @@genres << genre
            @name= name
            @artist= artist
            @genre= genre
    end
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        @@genres.inject(Hash.new(0)) { |key, value| key[value] += 1 ;key}
    end
    def self.artist_count
        @@artists.inject(Hash.new(0)) { |total, song_artist| total[song_artist] += 1 ;total}
    end
    
end
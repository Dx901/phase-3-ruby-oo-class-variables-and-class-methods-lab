class Song
    attr_accessor :name, :artist, :genre


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    @@count = 0
    def self.count
        @@count
    end

    @@artists = []
    def self.artists
        @@artists
    end

    @@genres = []
    def self.genre
        @@genres
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if !genre_count[genre]
                genre_count[genre] = 1
            else
                genre_count[genre] += 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count={}
        @@artists.each do |artist|
            if !artist_count[artist]
                artist_count[artist] = 1
            else
                artist_count[artist] += 1
            end
        end
        artist_count
    end

    class Variable
        @@artists=[]

    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.create
        song = self.new
        song.save
        song
    end
end







# class Song
#     attr_accessor :name, :artist_name
#     @@al = []

#     def self.all
#         @@all
#     end

#     def save
#         self.class.all << self
#     end
# end
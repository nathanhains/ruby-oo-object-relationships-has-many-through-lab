class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|songs| songs.artist ==self}
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def genres
        songs.map do |songs|
            songs.genre
        end
    end



end

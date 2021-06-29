require 'pry'
class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
      @name = name
       @@all << self 
    end
    
    def songs
     Song.all.select {|i| i.artist == self}
     #iterate through the song class and assign the artist, self, to the artist=
     #for that song
    end
    
    def add_song(song)
     song.artist = self
    end
      
    def add_song_by_name(song)
     new_song = Song.new(song)
     new_song.artist = self
    end

    def self.song_count
      #binding.pry
      Song.all.count
    end
    

      



end
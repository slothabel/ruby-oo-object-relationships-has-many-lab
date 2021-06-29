require 'pry'
class Song
    attr_accessor :artist, :name
  
    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def artist_name
      #binding.pry
      if self.artist
        self.artist.name
       else
        nil
       end
      end


end
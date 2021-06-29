require 'pry'
class Artist

    attr_accessor :name, :songs

    @@songs = []

    def initialize(name)
        @name = name
        @@songs << self 
      end
    
      def songs
        Song.all.select {|i| i.artist == self}
        # binding.pry
      end
    
      

    

      



end
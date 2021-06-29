require 'pry'
class Artist

    attr_accessor :name, :songs

    @@songs = []

    def initialize(name)
        @name = name
        @@songs << self 
      end
    
      def songs
        @@songs
       # binding.pry
      end
    
      

    

      



end
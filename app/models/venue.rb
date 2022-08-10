require 'pry'

class Venue
    attr_accessor :title
    attr_reader :city
   
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        # `Venue#concerts`
        # returns an array of all the concerts for the venue
        Concert.all.filter do |concert| 
            concert.venue ==self
        end
    end
 
    def bands
        # `Venue#bands`  
        # - returns an array of all the bands for the venue
        Band.all.filter do |b|
            b.venue==self

        end
    end

    # def self.all_venue
    #     self.all.each do |all_venue|
    #         all_venue.name
    #     end
    # end
  def concert_on(date)
  end

  def most_frequent_band
  end
  
end




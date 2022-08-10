class Concert

    attr_accessor :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date=date
        @band=band
        @venue=venue
        @@all << self
    end

    def self.all
        @@all
    end

    
    def hometown_show?
        self.venue.city == self.band.hometown
    end

    def introduction
        self.Concert.all.each do |concert|

        "Hello #{concert.venue.city}!!!!!, we are #{concert.band.name} and we're from #{concert.band.hometown}"
        # "Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here"
        end
    end
    
end
class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
# `Band#concerts`
#  should return an array of all the concerts that the band has played in
        Concert.all.select do |concert|
            concert.band ==self
        end
    end

    def play_in_venue(venue, data)
        Concert.new(venue,self, date)
    end

    def all_introductions
        # self.all.each do |intro|
        self.introduction.all.each do |intro|
        
        "Hello #{intro.city}!!!!!, we are #{intro.name} and we're from #{intro.hometown}"
        # "Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"
        end
    end

    
end
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

Band.new("Rush", "Toronto")
Band.new("NOFX", "San Fransisco")
Band.new("Frenzal Rhomb", "Sydney")

Venue.new("The White Rabbit", "San Antonio")
Venue.new("Emo's", "Austin")
Venue.new("CBGB", "NYC")

Concert.new('12-Jan', Band.all[0], Venue.all[0])
Concert.new('13-Jan', Band.all[0], Venue.all[0])
Concert.new('14-Jan', Band.all[0], Venue.all[0])



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
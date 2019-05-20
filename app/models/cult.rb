require 'pry'

class Cults
 attr_accessor :location
 attr_reader :name, :founding_year, :slogan
 @@all = []

 def initialize(name, location, founding_year, slogan)
   @name = name
   @location = location
   @founding_year = founding_year
   @slogan = slogan
   @@all << self
 end

 def self.all
   @@all
 end

 def recruit_follower(follower)
   Bloodoath.new(follower, self)
   #join_cult
 end

 def cult_population
   @followers.length
 end


 def self.find_by_name(name)
   self.all.find {|i| i.name == name}
 end

 def self.find_by_location(location)
   self.all.select {|i| i.location == location}
 end

 def self.find_by_founding_year(year)
   self.all.select {|i| i.founding_year==year}
 end

end

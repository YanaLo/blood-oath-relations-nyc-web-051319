require 'pry'

class Followers
 attr_accessor :name, :age, :motto
 @@all = []

 def initialize(name, age, motto)
   @name = name
   @age = age
   @motto = motto

   @@all << self
 end

 def self.all
   @@all
 end

 def join_cult(cult)
   Bloodoath.new(self, cult)
   # cult.recruit_follower(self) unless cults.include?(cult)
 end

 def self.find_by_founding_year(year)
     Cults.all.select {|i| i.founding_year == year}
 end


end

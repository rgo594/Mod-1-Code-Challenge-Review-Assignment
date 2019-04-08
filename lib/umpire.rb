require 'pry'

class Umpire

  attr_reader :name, :majors_attended

  @@all = []

  def initialize(name, majors_attended)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def player
    #returns an array of players who have this umpire for a match
    Round.all.select do |round|
      round.umpire == self
    end.map do |round|
      binding.pry
      round.athlete
    end
  end

  def round
    Round.all.select do |r_name|
      r_name.umpire == self
    end.map do |r_name|
      r_name.name
    end
  end

end

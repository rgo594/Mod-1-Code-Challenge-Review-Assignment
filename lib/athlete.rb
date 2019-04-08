require 'pry'

class Athlete

  attr_reader :name
  attr_accessor :rank

  @@all = []

  def initialize(name, rank)
    @name = name
    @rank = rank
    @@all << self
  end

  def self.all
    @@all
  end

  def ump
    #returns an array of players who have this umpire for a match
    Round.all.select do |round|
      round.athlete == self
    end.map do |round|
      round.umpire
    end
  end

  def round
    Round.all.select do |r_name|
      r_name.athlete == self
    end.map do |r_name|
      r_name.name
    end
  end

end

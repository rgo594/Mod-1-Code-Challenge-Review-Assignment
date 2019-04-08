require 'pry'
#JOIN TABLE

class Round

  attr_accessor :name, :athlete, :umpire

  @@all = []

  def initialize(name, athlete, umpire)
    @name = name
    @athlete = athlete
    @umpire = umpire
    @@all << self
  end

  def self.all
    @@all
  end


end

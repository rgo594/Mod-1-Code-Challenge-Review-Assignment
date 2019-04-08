require 'pry'
require_relative './lib/athlete.rb'
require_relative './lib/round.rb'
require_relative './lib/umpire.rb'


federer = Athlete.new("Roger Federer", 1)
nadal = Athlete.new("Raphael Nadal", 2)
djokovic = Athlete.new("Novak Djokovoic", 3)

maria = Umpire.new("Pascal Maria", 12)
ramos = Umpire.new("Carlos Ramos", 9)
hughes = Umpire.new("Alison Hughes", 15)

first = Round.new("First Round", federer, maria)
second = Round.new("Second Round", nadal, ramos)
third = Round.new("Third Round", djokovic, hughes)




binding.pry

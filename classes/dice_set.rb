class DiceSet
  attr_reader :diceset_array, :dice1, :dice2

  def initialize
    @diceset_array = [Dice.new, Dice.new]
    @dice1 = @diceset_array[0].value
    @dice2 = @diceset_array[1].value
  end

  def roll
    @diceset_array.each{|dice| dice.roll }
  end

  def display
    puts @diceset_array.map {|d| "[ #{d.value} ]"}.join(' - ')
  end

  def check_if_numbers_are_same
    if @diceset_array[0].value == @diceset_array[1].value
      puts "WOW, WHAT A TOSS...TWO OF A KIND!"
    else
      puts ""
    end
  end
end

#!/usr/bin/env ruby

require_relative 'classes/dice'
require_relative 'classes/dice_set'

diceset = DiceSet.new



puts "Hello and welcome to ROLL THAT DICE!"
response = nil

until response == 'q'
      puts "Type 'r' to roll your dice, type 'q' to quiit"
      print '> '
      response = gets.chomp
    if response == 'r'
        diceset.roll
        puts diceset.display
       diceset.check_if_numbers_are_same
      end
    if response == 'q'
        exit!
      end
  end

require 'pry'

require_relative "hand_class"
require_relative "deck_class"
require_relative "card_class"

def play

  puts "Welcome to Blackjack!", nil

  player_card1 = Deck.new.deal_card
  player_card2 = Deck.new.deal_card
  puts "Player was dealt #{player_card1.card_rank}#{player_card1.card_suit}"
  puts "Player was dealt #{player_card2.card_rank}#{player_card2.card_suit}"

  score = Hand.new([player_card1, player_card2])
  puts "Values: #{score.assign_value}"
  puts "Player score: #{score.calc_score}"

  puts "Hit or stand (H/S): "
  user_input = gets.chomp.downcase

  if user_input == "s"
    puts "Player score: #{score.calc_score}"
  elsif user_input == "h"

  end



end

play

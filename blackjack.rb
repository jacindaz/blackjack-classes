require 'pry'

require_relative "blackjack_classes"
require_relative "deck_class"

def play

  puts "Welcome to Blackjack!"

  player_card1 = Deck.new.deal_card
  player_card2 = Deck.new.deal_card
  puts "Player was dealt #{player_card1.card_rank}#{player_card1.card_suit}"
  puts "Player was dealt #{player_card2.card_rank}#{player_card2.card_suit}"

  score = Hand.new([player_card1, player_card2])
  #puts "Score: #{score.calc_score}"
  #binding.pry

  puts "Values: #{score.assign_value}"
  puts "Score: #{score.calc_score}"

end

play

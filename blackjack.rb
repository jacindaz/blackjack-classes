require 'pry'

require_relative "hand_class"
require_relative "deck_class"
require_relative "card_class"

def play

  puts "Welcome to Blackjack!", nil

  #deal 2 player cards-----------------------------------------------
  player_card1 = Deck.new.deal_card
  player_card2 = Deck.new.deal_card
  puts "Player was dealt #{player_card1.card_rank}#{player_card1.card_suit}"
  puts "Player was dealt #{player_card2.card_rank}#{player_card2.card_suit}"

  #calculate player score---------------------------------------------
  player_card_array = [player_card1, player_card2]
  player_score = Hand.new(player_card_array)
  #binding.pry
  puts "Values: #{player_score.assign_value}"
  puts "Player score: #{player_score.calc_score}"

  puts "Hit or stand (H/S): "
  user_input = gets.chomp.downcase
  puts nil

  #if user wants to "hit"-----------------------------------------
  if user_input == "h"
    player_card3 = Deck.new.deal_card
    puts "Player was dealt #{player_card3.card_rank}#{player_card3.card_suit}"
    player_card_array << player_card3
    #binding.pry

    player_score = Hand.new(player_card_array)
    puts "Player score: #{player_score.calc_score}"
  #if user wants to "stand"---------------------------------------
  elsif user_input == "s"
    puts "Player score: #{player_score.calc_score}", nil, nil

    #deal 2 dealer cards------------------------------------------
    dealer_card1 = Deck.new.deal_card
    dealer_card2 = Deck.new.deal_card
    puts "Dealer was dealt #{dealer_card1.card_rank}#{dealer_card1.card_suit}"
    puts "Dealer was dealt #{dealer_card2.card_rank}#{dealer_card2.card_suit}"

    #calculate dealer score---------------------------------------
    dealer_score = Hand.new([dealer_card1, dealer_card2])
    puts "Values: #{dealer_score.assign_value}"
    puts "Dealer score: #{dealer_score.calc_score}"
  end


end

play

require 'pry'

require_relative "hand_class"
require_relative "deck_class"
require_relative "card_class"

def play
  dealer_score = 0
  player_score = 0
  done = false

  puts "Welcome to Blackjack!", nil

  #deal 2 player cards-----------------------------------------------
  player_card1 = Deck.new.deal_card
  player_card2 = Deck.new.deal_card
  puts "Player was dealt #{player_card1.card_rank}#{player_card1.card_suit}"
  puts "Player was dealt #{player_card2.card_rank}#{player_card2.card_suit}"

  #calculate player score---------------------------------------------
  player_card_array = [player_card1, player_card2]
  player_score = Hand.new(player_card_array)

  #puts "Values: #{player_score.assign_value}"
  puts "Player score: #{player_score.calc_score}", nil

  puts "Hit or stand (H/S): "
  user_input = gets.chomp.downcase
  puts nil

  while not done
    if user_input == "h"
      #deals 1 additional card from deck
      player_card3 = Deck.new.deal_card
      puts "Player was dealt #{player_card3.card_rank}#{player_card3.card_suit}"
      player_card_array << player_card3

      #display player score
      player_score = Hand.new(player_card_array)
      puts "Player score: #{player_score.calc_score}"

      #if player busts, "Bust! Game over..."
      if player_score.calc_score > 21
        puts "Bust! Game over..."
        done = true
      elsif player_score.calc_score == 21
        puts "Black Jack! You win!"
        done = true
      else
        #ask user input again
        puts "Hit or stand (H/S): "
        user_input = gets.chomp.downcase
        puts nil
      end

      #exit game
    elsif user_input == "s"
      #player's turn is ended, begin dealer's turn
      dealer_card1 = Deck.new.deal_card
      dealer_card2 = Deck.new.deal_card
      puts "Dealer was dealt #{dealer_card1.card_rank}#{dealer_card1.card_suit}"
      puts "Dealer was dealt #{dealer_card2.card_rank}#{dealer_card2.card_suit}"

      dealer_card_array = [dealer_card1, dealer_card2]

      dealer_score = Hand.new(dealer_card_array)
      puts "Dealer score: #{dealer_score.calc_score}", nil

      while dealer_score.calc_score <=17
        dealer_card3 = Deck.new.deal_card
        puts "Dealer was dealt #{dealer_card3.card_rank}#{dealer_card3.card_suit}"
        dealer_card_array << dealer_card3
        dealer_score = Hand.new(dealer_card_array)
        puts "Dealer score: #{dealer_score.calc_score}", nil
      end

      if dealer_score.calc_score > 21
        puts "Bust! You win!"
        done = true
      elsif dealer_score.calc_score > player_score.calc_score
        puts "Sorry, dealer wins!"
        done = true
      end

    end

  end



end

play

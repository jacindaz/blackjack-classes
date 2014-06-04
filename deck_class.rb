require_relative "blackjack_classes"
require 'pry'

RANKS = [2,3,4,5,6,7,8,9,10, "J", "Q", "K", "A"]
SUITS = ["♦", "♣", "♠", "♥"]

#Deck to represent a collection of 52 cards. When dealing a hand this class
#can be used to supply the Card objects.
class Deck

  #attr_reader

  def initialize

  end

  def build_deck
    @new_deck = []
    #binding.pry
    SUITS.each do |suit|
      RANKS.each do |rank|
        #binding.pry
        @new_deck << Card.new(rank, suit)
        #binding.pry
      end
    end
    puts "#{@new_deck}"
    puts "Deck length: #{@new_deck.length}"
  end

  def two_cards(player_or_dealer)
    2.times do
      if player_or_dealer == "player"
        puts "Player was dealt #{deal_card}"
      elsif player_or_dealer == "dealer"
        puts "Dealer was dealt #{deal_card}"
      end
    end
  end

  def random_number(card_or_suit)
    index = (card_or_suit.length) - 1
    return (rand() * index).round
  end

  def random_card
    cards_array[random_number(cards_array)]
  end

  def random_suit
    suits_array[random_number(suits_array)]
  end

  def deal_card
    one_card = "#{random_card}#{random_suit}"
    return one_card
  end

end

test = Deck.new
puts test.build_deck

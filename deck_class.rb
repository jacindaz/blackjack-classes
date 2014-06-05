require_relative "hand_class"
require_relative "card_class"
require 'pry'



#Deck to represent a collection of 52 cards. When dealing a hand this class
#can be used to supply the Card objects.
class Deck

  def initialize
    @ranks = [2,3,4,5,6,7,8,9,10, "J", "Q", "K", "A"]
    @suits = ["♦", "♣", "♠", "♥"]
    @new_deck = []

    @suits.each do |suit|
      @ranks.each do |rank|
        @new_deck << Card.new(rank, suit)
        #puts "#{@new_deck}"
      end
    end
    #puts "#{@new_deck}"
    #puts "Deck length: #{@new_deck.length}"
    @new_deck.shuffle!
  end

  def new_deck
    @new_deck
  end


  def deal_card
    @new_deck.pop
  end


end

#test = Deck.new
#puts "#{test.deal_card}"
#puts "#{test.new_deck}"

#sample_deck = Deck.new
#puts sample_deck

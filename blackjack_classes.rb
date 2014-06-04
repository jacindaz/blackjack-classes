
#require_relative "deck_class"

#Card to represent an individual playing card. This class should
#contain the suit and the value and provide methods for determining
#what type of card it is (e.g. face card or ace).
class Card

  attr_reader :card_rank, :card_suit

  def initialize(card_rank, card_suit)
    @card_rank = card_rank
    @card_suit = card_suit
  end

  def face_card?
    ["J", "Q", "K"].include?(@card_rank)
  end

  def is_ace?
    "A".include?(@card_rank)
  end

end


# test = Card.new("10", "♥")
# puts test

# puts test.card_rank
# puts test.card_suit



#Hand to represent the player's and dealer's hand. This class will need to determine the best score
#based on the cards that have been dealt.
class Hand

  def initialize(array_of_cards = [])
    @array_of_cards = array_of_cards
  end


  def assign_value
    #binding.pry
    @values = []
    card_value = nil

    @array_of_cards.each do |card_object|
      if (1..10).include?(card_object.card_rank) == true
        card_value = card_object.card_rank
        #puts "#{@value}"
      elsif card_object.face_card?
        card_value =  10
        #puts "#{@value}, face card rank: #{card_object.card_rank}"
      elsif card_object.is_ace?
        card_value = [1,11]
        #puts "This is an ace, deal with later"
      end
      @values << card_value
    end
    return @values
  end


  def calc_score
    sum = 0
    @values.each do |value|
      if !value.class.is_a?(Array)
        sum += value.to_i
      else
        if (sum + 11 > 21)
          sum += 1
        else
          sum += 11
        end #end inner if statement
      end #end outer if statement
    end #end each loop
    return sum
  end #end calc_score method

  def best_score
  end

end











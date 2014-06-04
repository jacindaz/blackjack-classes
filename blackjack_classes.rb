
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


  def value
  end

end


# test = Card.new("10", "♥")
# puts test

# puts test.card_rank
# puts test.card_suit



#Hand to represent the player's and dealer's hand. This class will need to determine the best score
#based on the cards that have been dealt.
class Hand

  def cal_score
  end

  def best_score
  end

end


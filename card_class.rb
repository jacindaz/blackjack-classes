require_relative "deck_class"
require_relative "hand_class"

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















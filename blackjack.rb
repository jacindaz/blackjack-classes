#Deck to represent a collection of 52 cards. When dealing
#a hand this class can be used to supply the Card objects.
class Deck

  def initialize
    @card_number = [1,2,3,4,5,6,7,8,9,10, "J", "Q", "K", "A"]
    @suit = ["♦", "♣", "♠", "♥"]
  end

  def two_cards(player_or_dealer)
    2.times do
      if player_or_dealer == "player"
        puts "Player was dealt "
      elsif player_or_dealer == "dealer"
        puts "Dealer was dealt"
      end
    end
  end

end


#Card to represent an individual playing card.
#This class should contain the suit and the value and
#provide methods for determining what type of card it is
#(e.g. face card or ace).
class Card < Deck

  def random_number(card_or_suit)
    index = (card_or_suit.length) - 1
    return (rand() * index).round
  end

  def random_card
    @card_number[random_number(@card_number)]
  end

  def random_suit
    @suit[random_number(@suit)]
  end

  def deal_card
    "#{random_card}#{random_suit}"
  end

end

test = Card.new
puts test.deal_card



#Hand to represent the player's and dealer's hand.
#This class will need to determine the best score
#based on the cards that have been dealt.
class Hand

  def score
  end

end


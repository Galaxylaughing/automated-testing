
# deck.rb

require_relative 'card'

class Deck
  
  attr_reader :card_list
  
  def initialize
    @card_list = []
    make_a_deck()
  end
  
  def make_a_deck()
    Card::VALUES.each do |value|
      Card::SUITS.each do |suit|
        new_card = Card.new(value, suit)
        card_list.push(new_card)
      end
    end
  end
  
  def draw
    # returns a card
  end
  
  def shuffle
    # shuffles the deck
  end
end

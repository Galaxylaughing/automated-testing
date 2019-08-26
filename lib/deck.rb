
# deck.rb

require_relative 'card'

class Deck
  
  attr_accessor :card_list
  
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
    return card_list.delete_at(rand(0..52))
  end
  
  def shuffle
    return card_list.shuffle()
  end
  
end


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
    if card_list.length <= 0
      raise ArgumentError.new("Cannot draw from empty deck")
    end
    return card_list.pop()
  end
  
  def shuffle
    if card_list.length <= 0
      raise ArgumentError.new("Cannot shuffle an empty deck")
    end
    return card_list.shuffle()
  end
  
  def count
    return card_list.length
  end
  
end

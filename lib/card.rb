
# card.rb

class Card
  
  SUITS = [:hearts, :spades, :clubs, :diamonds]
  VALUES = (1..13).to_a
  
  attr_reader :value, :suit
  
  def initialize(value, suit)
    raise ArgumentError.new("Invalid value") if !(VALUES.include?(value.to_i))
    raise ArgumentError.new("Invalid suit") if !(SUITS.include?(suit.to_sym))
    @value = value.to_i
    @suit = suit.to_sym
  end
  
  def faces_to_names
    case value
    when 1
      value_name = "Ace"
    when 11
      value_name = "Jack"
    when 12
      value_name = "Queen"
    when 13
      value_name = "King"
    end
    return value_name
  end
  
  def to_s
    if (2..10).include?(value)
      value_name = value
    else
      value_name = self.faces_to_names
    end
    to_s_message = "#{value_name} of #{suit.to_s}"
    return to_s_message
  end
  
end
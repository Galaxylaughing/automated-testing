require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
  #   1.  Expected Behavior
  #   2.  Edge cases
  
  describe "You can create a Deck instance" do
    
    it "Can be created" do
      new_deck = Deck.new()
      expect(new_deck).must_be_instance_of Deck    
    end
    
    it "Has the right number of cards" do
      new_deck = Deck.new()
      all_cards_in_deck = new_deck.card_list
      
      expect(all_cards_in_deck.length).must_equal 52
    end
    
    it "Has the right values and suits" do
      new_deck = Deck.new()
      all_cards_in_deck = new_deck.card_list
      
      list = []
      all_cards_in_deck.each do |card|
        if card.value == 6 && card.suit == :hearts
          list << {value: card.value, suit: card.suit}
        elsif card.value == 6 && card.suit == :spades
          list << {value: card.value, suit: card.suit}
        elsif card.value == 6 && card.suit == :clubs
          list << {value: card.value, suit: card.suit}
        elsif card.value == 6 && card.suit == :diamonds
          list << {value: card.value, suit: card.suit}
        end
      end
      
      expect(list).must_equal [{value: 6, suit: :hearts}, {value: 6, suit: :spades}, {value: 6, suit: :clubs}, {value: 6, suit: :diamonds}]
    end
    
  end
end
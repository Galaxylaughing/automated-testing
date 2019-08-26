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
    
    it "Doesn't have nonexistant suits" do
      new_deck = Deck.new()
      all_cards_in_deck = new_deck.card_list
      
      list = []
      all_cards_in_deck.each do |card|
        if card.value == 4 && card.suit == :clovers
          list << {value: card.value, suit: card.suit}
        end
      end
      
      expect(list).must_equal []
    end
    
    it "Doesn't have nonexistant values" do
      new_deck = Deck.new()
      all_cards_in_deck = new_deck.card_list
      
      list = []
      all_cards_in_deck.each do |card|
        if card.value == 14 && card.suit == :hearts
          list << {value: card.value, suit: card.suit}
        end
      end
      
      expect(list).must_equal []
    end
  end
  
  describe "the reader method" do
    
    it "returns an array" do
      new_deck = Deck.new()
      expect(new_deck.card_list).must_be_instance_of Array
    end
    
  end
  
  describe "The draw method" do
    
    it "gives back a card" do
      new_deck = Deck.new()
      drawn_item = new_deck.draw()
      expect(drawn_item).must_be_instance_of Card
    end
    
    it "gives back card 52" do
      new_deck = Deck.new()
      
      card_fifty_two = new_deck.card_list.last
      drawn_item = new_deck.draw()
      expect(card_fifty_two).must_equal drawn_item
    end
    
    it "gives back card 1" do
      new_deck = Deck.new()
      
      card_one = new_deck.card_list.first
      51.times do
        new_deck.draw()
      end
      drawn_item = new_deck.draw()
      expect(card_one).must_equal drawn_item
    end
    
    it "removes a card from the deck" do
      deck_one = Deck.new()
      deck_two = Deck.new()
      deck_two.draw()
      expect(deck_one.card_list.length).wont_equal deck_two.card_list.length
    end
    
  end
  
  describe "The shuffle method" do
    
    it "returns a new order of cards" do
      deck_one = Deck.new()
      deck_one_shuffled = deck_one.shuffle()
      expect(deck_one.card_list).wont_equal deck_one_shuffled
    end
    
    it "returns all the same cards" do
      deck_two = Deck.new()
      deck_two_shuffled = deck_two.shuffle()
      deck_two.card_list.each do |card|
        expect(deck_two_shuffled).must_include card
      end
    end
    
  end
  
  describe "The count method" do
    
    it "returns an integer" do
      new_deck = Deck.new()
      expect(new_deck.count).must_be_instance_of Integer
    end
    
    it "returns the number of cards in the deck" do
      new_deck = Deck.new()
      expect(new_deck.count).must_equal new_deck.card_list.length
    end
    
  end
  
end
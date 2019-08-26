require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do
    
    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end
    
    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
      expect {Card.new(4, :clovers)}.must_raise ArgumentError
      expect {Card.new(14, :clubs)}.must_raise ArgumentError
    end
  end
  
  describe "Testing to_s" do
    
    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      two_diamonds = Card.new(2, :diamonds)
      expect(two_diamonds.to_s).must_equal "2 of diamonds"
      
      three_clubs = Card.new(3, :clubs)
      expect(three_clubs.to_s).must_equal "3 of clubs"
      
      nine_hearts = Card.new(9, :hearts)
      expect(nine_hearts.to_s).must_equal "9 of hearts"
      
      ten_spades = Card.new(10, :spades)
      expect(ten_spades.to_s).must_equal "10 of spades"
    end
    
    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      one_diamonds = Card.new(1, :diamonds)
      expect(one_diamonds.to_s).must_equal "Ace of diamonds"
      
      eleven_hearts = Card.new(11, :hearts)
      expect(eleven_hearts.to_s).must_equal "Jack of hearts"
      
      twelve_clubs = Card.new(12, :clubs)
      expect(twelve_clubs.to_s).must_equal "Queen of clubs"
      
      thirteen_spades = Card.new(13, :spades)
      expect(thirteen_spades.to_s).must_equal "King of spades"
    end
  end
  
  describe "Reader methods" do
    
    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      two_diamonds = Card.new(2, :diamonds)
      expect(two_diamonds.value).must_equal 2
      
      two_hearts = Card.new("2", :hearts)
      expect(two_diamonds.value).must_equal 2
    end
    
    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      two_diamonds = Card.new(2, :diamonds)
      expect(two_diamonds.suit).must_equal :diamonds
      
      two_clubs = Card.new(2, "clubs")
      expect(two_clubs.suit).must_equal :clubs
    end
  end
  
end

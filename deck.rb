class Deck
  attr_accessor :cards

  LEAR = %w[♣ ♥ ♠ ♦].freeze
  FACES = (2..10).to_a << "J" << "Q" << "K" << "A"

  def initialize
    @cards = []
    LEAR.each do |lear|
      FACES.each do |face|
        @cards << Card.new(lear, face)
      end
    end
  end

  def deal_card(hand)
    hand.cards << @cards.slice!(0)
  end

  def shuffle
    @cards.shuffle!
  end
end

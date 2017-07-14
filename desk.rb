class Desk
  attr_accessor :cards

  LEAR = %w[♣ ♥ ♠ ♦].freeze
  FACES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze

  def initalize
    @cards = []
    LEAR.each do |lear|
      FACES.each do |face|
        @cards << Card.new(lear, face)
      end
    end
  end
end
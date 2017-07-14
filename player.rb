class Player
  def initialize
    puts 'Как вас зовут?'
    @name = gets.chomp.capitalize
    bank
    start_game
  end

  private

  def bank
    @player_bank = 100
    @dealer_bank = 100
  end

  def start_game
    bank if @player_bank <= 0 || @dealer_bank <= 0
    @game_bank = 0
    @desk = Desk.new
    @desk.shuffle
    @player_hand = Hand.new
    @dealer_hand = Hand.new

    deal_cards
  end
end

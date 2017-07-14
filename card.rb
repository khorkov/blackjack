class Card
  def initialize(lear, face)
    @lear = lear
    @face = face
  end

  def value
    return @face if @face.is_a?(Integer)
    @face.eql?('A') ? 11 : 10
  end

  def show
    puts "#{@face} #{@lear}"
  end
end

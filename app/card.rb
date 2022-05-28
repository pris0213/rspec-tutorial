class Card
  attr_accessor :rank, :suit

  def initialize(rank = 'Seven', suit = 'Diamonds')
    @rank = rank
    @suit = suit
  end
end
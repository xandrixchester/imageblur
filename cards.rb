class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end


class Deck

  Array1 = [2, 3, 4, 5, 6, 7, 8, 9, 10, :Ace, :Jack, :Queen, :King]
  Array2 = [:spades, :diamonds, :clubs, :heart]

  def initialize
    @cards = []
    @cards << Card.new(Array1.sample, Array2.sample)
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.each do |card|
      card.output_card
    end
  end



end

deck = Deck.new
deck.shuffle
deck.deal
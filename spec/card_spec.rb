require './app/card'

RSpec.describe Card do
  
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank and it can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    expected_suit = 'Spades'
    card.suit = 'Nonsense'
    expect(card.suit).to eq(expected_suit), "Hey, I expected #{expected_suit}, but I got #{card.suit} instead!"
  end

  context 'with no argument' do
    let(:card) { Card.new() }
    it 'defaults to Seven of Diamonds' do
      expect(card.rank).to eq('Seven')
      expect(card.suit).to eq('Diamonds')
    end
  end
end 
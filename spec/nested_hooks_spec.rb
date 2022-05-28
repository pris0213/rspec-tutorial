RSpec.describe 'Nested hooks' do
  before(:context) do
    puts 'Outter before context'
  end

  before(:example) do
    puts 'Outter before each example'
  end

  it 'runs a random test' do
    expect(4 * 5).to eq(20)
  end

  context 'with nested contexts' do
    before(:context) do
      puts 'Inner before context'
    end

    before(:example) do
      puts 'Inner before each example'
    end

    it 'sums' do
      expect(1 + 4).to eq(5)
    end

    it 'also subtracts' do
      expect(9 - 4).to eq(5)
    end
  end
end
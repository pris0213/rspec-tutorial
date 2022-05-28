RSpec.describe 'Before and After hooks' do
  before(:context) do
    puts 'Before context'
  end

  before(:example) do
    puts 'Before each example'
  end

  it 'runs a random test' do
    expect(4 * 5).to eq(20)
  end

  it 'runs another random test' do
    expect(20 / 4).to eq(5)
  end

  after(:example) do
    puts 'After each example'
  end

  after(:context) do
    puts 'After context'
  end
end
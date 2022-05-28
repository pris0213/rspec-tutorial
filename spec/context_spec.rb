RSpec.describe '#even? method' do

  context 'with an even number' do
    it 'should return true' do
      expect(4.even?).to be(true)
    end
  end

  context 'with an odd number' do
    it 'should return false' do
      expect(5.even?).to be(false)
    end
  end
end
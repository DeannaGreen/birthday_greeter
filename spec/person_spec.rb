require 'person'

describe Person do
  subject(:deanna) { Person.new('Deanna', '26-11-1997') }

  describe '#name' do
    it 'returns the name' do
      expect(deanna.name).to eq 'Deanna'
    end
  end

  describe '#birthday' do
    it 'returns the birthday' do
      expect(deanna.birthday).to eq '26-11-1997'
    end
  end
end

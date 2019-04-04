require 'countdown'

describe Countdown do
  let(:bday) { Countdown.new("26", "11") }

  describe '#day' do
    it 'returns a day' do
      expect(bday.day).to eq "26"
    end
  end

  describe '#month' do
    it 'returns a month' do
      expect(bday.month).to eq "11"
    end
  end

  describe '#days_to_next_bday' do
    it 'works out number of days until next birthday' do
      bday.days_to_next_bday
      expect(bday.no_of_days).to eq 237
    end
  end

  describe '#calculate' do
    it 'works out days and takes off 365 if your birthday has not happened this year' do
      expect(bday.calculate(602)).to eq 237
    end
  end
end

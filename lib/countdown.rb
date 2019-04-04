require 'date'

class Countdown
  attr_reader :no_of_days, :day, :month

  def initialize(day, month)
    @day = day
    @month = month
    @no_of_days = 0
  end

  def self.instance
    @countdown
  end

  def self.create(day, month)
    @countdown = Countdown.new(day, month)
  end

  def days_to_next_bday
    next_year = Date.today.year + 1
    next_bday = "#{@day}-#{@month}-#{next_year}"

    @no_of_days = (Date.parse(next_bday) - Date.today).to_i

    calculate
  end

  def calculate(days = @no_of_days)
    if days > 365
      @no_of_days = days - 365
    end
    @no_of_days
  end

end

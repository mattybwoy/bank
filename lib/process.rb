require_relative 'account'

class Processor
  attr_accessor :balance, :transactions

  def deposit(date, input)
    @balance += input
    @transactions << ("#{date} || #{'%.2f' % input} || || #{'%.2f' % @balance}")
  end

  def withdraw(date, input)
    @balance -= output
    @transactions << ("#{date} || || #{'%.2f' % output} || #{'%.2f' % @balance}")
  end

end
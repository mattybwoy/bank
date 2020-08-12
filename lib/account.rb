require_relative 'statement'

class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(date,input)
    @date = date
    @input = input
    @balance += input
    @transactions << ("#{@date} || #{'%.2f' % @input} || || #{'%.2f' % @balance}")
  end

  def withdraw(date, output)
    @date = date
    @output = output
    @balance -= output
    @transactions << ("#{@date} || || #{'%.2f' % @output} || #{'%.2f' % @balance}")
  end

  def print_statement
    puts 'date || credit || debit || balance'
    transaction = @transactions.reverse.each do |x|
      puts x
  end
end

end
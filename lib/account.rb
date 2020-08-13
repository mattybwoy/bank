require_relative 'statement'
require_relative 'process'

class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
    @statement = Statement.new
    @processor = Processor.new
  end

  def make_deposit(date, input)
    @date = date
    @input = input
    @processor.deposit(@date, @input)
  end

  def make_withdrawal(date, output)
    @processor.withdraw(date, output)
  end

  def print_statement
    @statement.print(@transactions)
  end

end
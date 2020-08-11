require_relative 'statement'

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(date,input)
    @date = date
    @input = input
    @balance += input
    @transactions << [@date, @input, 0, @balance]
  end

  def withdraw(date, output)
    @date = date
    @output = output
    @balance -= output
    @transactions << [@date, 0, @output, @balance]
  end

  def print_statement
    @statement = Statement.new
  end

end
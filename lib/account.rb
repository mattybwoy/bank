require_relative 'statement'

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def check_balance
    @balance
  end

  def print_statement
    @statement = Statement.new
  end
end
require_relative 'statement'

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(input)
    @input = input
    @balance += input
  end

  def withdraw(output)
    @output = output
    @balance -= output
  end

  def print_statement
    @statement = Statement.new
  end

  private
    def check_balance
      @balance
    end
end
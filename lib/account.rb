require_relative 'statement'

class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
    @test = "string"
  end

  def deposit(date,input)
    @date = date
    @input = input
    @balance += input
    @transactions << ("#{@date} || #{@input} || || #{@balance}")
  end

  def withdraw(date, output)
    @date = date
    @output = output
    @balance -= output
    @transactions << ("#{@date} || || #{@output} || #{@balance}")
  end

  def print_statement
    puts 'date || credit || debit || balance'
    transaction = @transactions.reverse.each do |x|
      puts x
  end
end

end
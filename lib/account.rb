require_relative 'statement'
require 'date'

class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
    @statement = Statement.new
  end

  def deposit(date,input)
    date = DateTime.strptime(date, '%d-%m-%Y')
    date = date.strftime("%-d/%-m/%Y")
    @balance += input
    @transactions << ("#{date} || #{'%.2f' % input} || || #{'%.2f' % @balance}")
  end

  def withdraw(date, output)
    date = DateTime.strptime(date, '%d-%m-%Y')
    date = date.strftime("%-d/%-m/%Y")
    @balance -= output
    @transactions << ("#{date} || || #{'%.2f' % output} || #{'%.2f' % @balance}")
  end

  def print_statement
    @statement.print(@transactions)
  end

end
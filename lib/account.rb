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
end
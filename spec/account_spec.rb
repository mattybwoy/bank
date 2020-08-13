require './lib/account'

describe Account do
  subject(:account) { Account.new }

  describe 'Create an account' do
    it 'creates a user account that has a zero balance' do
      expect(subject.balance).to eq(0)
    end
  end
  describe 'Deposit funds into account' do
    it 'allows user to deposit funds into account' do
      subject.deposit(10-01-2012,500)
      expect(subject.balance).to eq(500)
    end
  end
  describe 'Withdraw funds from account' do
    it 'allows user to withdraw funds from their account' do
      subject.deposit(10-01-2012, 1000)
      subject.withdraw(14-01-2012, 500)
      expect(subject.balance).to eq(500)
    end
  end
  describe 'print statement' do
    it'allows user to print out a statement of their account' do
      subject.deposit('10-01-2012'  , 1000)
      subject.withdraw('12-01-2012', 250)
      statement = <<~STATEMENT
        date || credit || debit || balance
        2012-01-12 || || 250.00 || 750.00
        2012-01-10 || 1000.00 || || 1000.00
      STATEMENT
      expect { account.print_statement }.to output(statement).to_stdout
    end
  end
  describe 'transactions' do
    it'records the transactions of the user' do
      subject.deposit("10-01-2012", 1000)
      subject.withdraw("14-01-2012", 500)
      expect(subject.transactions).to eq(["2012-01-10 || 1000.00 || || 1000.00", "2012-01-14 || || 500.00 || 500.00"])
    end
  end
end
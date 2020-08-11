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
      subject.deposit(500)
      expect(subject.balance).to eq(500)
    end
  end
  describe 'Withdraw funds from account' do
    it 'allows user to withdraw funds from their account' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.balance).to eq(500)
    end
  end
  describe 'View current balance' do
    xit 'allows user to check their balance' do
      subject.deposit(1250)
      subject.withdraw(500)
      expect(subject.check_balance).to eq(subject.balance)
    end
  end
  describe 'print statement' do
    it'allows user to print out a statement of their account' do
      expect(subject.print_statement).to be_an_instance_of(Statement)
    end
  end
end
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
end
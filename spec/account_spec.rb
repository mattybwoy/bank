require './lib/account'

describe Account do
  describe 'Create an account' do
    it 'creates a user account that has a zero balance' do
      account = Account.new
      expect(subject.balance).to eq(0)
    end
  end
  describe 'Deposit funds into account' do
    it 'allows user to deposit funds into account' do
      account = Account.new
      account.deposit(500)
      expect(account.balance).to eq(500)
    end
  end
end
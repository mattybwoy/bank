require './lib/account'

describe Account do
  describe 'Create an account' do
    it 'creates a user account that has a zero balance' do
      account = Account.new
      expect(subject.balance).to eq(0)
    end
  end
end
require './lib/account'
require './lib/process'

describe Account do
  subject(:account) { Account.new }

  describe 'Create an account' do
    it 'creates a user account that has a zero balance' do
      expect(subject.balance).to eq(0)
    end
  end
  describe 'transactions' do
    it'records the transactions of the user' do
      processor = Processor.new
      subject.make_deposit("10-01-2012", 1000)
      processor.deposit("10-01-2012", 1000)
      subject.make_withdrawal("14-01-2012", 500)
      processor.withdraw("14-01-2012", 500)
      expect(subject.transactions).to eq(["10-01-2012 || 1000.00 || || 1000.00", "14-01-2012 || || 500.00 || 500.00"])
    end
  end
end
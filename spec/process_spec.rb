require './lib/process'
require './lib/account'

describe Process do
  subject(:processor) { Processor.new }

  describe 'Deposit funds into account' do
    xit 'allows user to deposit funds into account' do
      subject.deposit(10-01-2012,500)
      expect(account.balance).to eq(500)
    end
  end
  describe 'Withdraw funds from account' do
    xit 'allows user to withdraw funds from their account' do
      subject.deposit(10-01-2012, 1000)
      subject.withdraw(14-01-2012, 500)
      expect(account.balance).to eq(500)
    end
  end
end
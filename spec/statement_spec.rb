require './lib/statement'
require './lib/account'

describe Statement do
  # let(:account) {double :account}
  subject(:statement) { Statement.new }
  let(:transaction) { double :transaction, date: 10/1/2012, input: 1000, balance: 1000 }
  let(:transactions) {[transaction]}

  describe 'Expects print to receive 1 argument' do
      statement = Statement.new
      it { is_expected.to respond_to(:print).with(1).argument }
  end

    it'prints the statement for the user' do
      statement = <<~STATEMENT
        date || credit || debit || balance
        10/1/2012 || 1000.00 || || 1000.00
      STATEMENT
      expect { subject.print(transactions) }.to output(statement).to_stdout
    end
  end
require './lib/statement'
require './lib/account'

describe Statement do
  subject(:statement) { Statement.new }
  let(:transactions) {["10/1/2012 || 1000.00 || || 1000.00"]}

  describe "#Print" do 
    it 'Expects print to receive 1 argument' do
      statement = Statement.new
      expect(statement).to respond_to(:print).with(1).argument 
    end
  end

    it'prints the statement for the user' do
      statement = <<~STATEMENT
        date || credit || debit || balance
        10/1/2012 || 1000.00 || || 1000.00
      STATEMENT
      expect { subject.print(transactions) }.to output(statement).to_stdout
    end
  end
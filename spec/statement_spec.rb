require './lib/statement'

describe Statement do
  describe 'Expects print to receive 1 argument' do
      statement = Statement.new
      it { is_expected.to respond_to(:print).with(1).argument }
  end
    xit'prints the statement for the user' do
      subject.deposit('10-01-2012'  , 1000)
      subject.withdraw('12-01-2012', 250)
      statement = <<~STATEMENT
        date || credit || debit || balance
        12-01-2012 || || 250.00 || 750.00
        10-01-2012 || 1000.00 || || 1000.00
      STATEMENT
      expect { account.print_statement }.to output(statement).to_stdout
    end
  end
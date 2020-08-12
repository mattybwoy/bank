require './lib/statement'

describe Statement do
  describe 'Print statement' do
    it 'prints a statement out for user' do
      expect do statement = Statement.new 
      end. to output('date || credit || debit || balance').to_stdout
    end
  end
end
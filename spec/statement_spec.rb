require './lib/statement'

describe Statement do
  describe 'Create a statement' do
    it 'creates an empty statement for the user' do
      expect do statement = Statement.new 
      end. to output('credit || debit || balance').to_stdout
    end
  end
end
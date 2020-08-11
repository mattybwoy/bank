require './lib/statement'

describe Statement do
  describe 'Create a statement' do
    xit 'creates an empty statement for the user' do
      expect do statement = Statement.new 
      end. to output('date || credit || debit || balance').to_stdout
    end
  end
end
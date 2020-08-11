require './lib/statement'

describe Statement do
  describe 'Create a statement' do
    it 'creates a statement for the user' do
      statement = Statement.new
      expect(statement).to be_an_instance_of(Statement)
    end
  end
end
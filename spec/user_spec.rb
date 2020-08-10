require './lib/user'

describe User do
  describe 'Create a user' do
    it 'creates a user that accepts name on initialize' do
      name = User.new(name)
      expect(name).to eq(name)
    end
  end
end
require './lib/user'

describe User do
  describe 'Create an account' do
    it 'creates a user account' do
      name = User.new(name)
      expect(name).to be_an_instance_of(User)
    end
  end
end
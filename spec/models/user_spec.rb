require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#name' do
    it 'returns the user\'s name' do
      user = User.new(name: 'John')
      expect(user.name).to eq('John')
    end
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User can create many activities' do
    it { should have_many(:activities) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:email) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:password) }
  end
end
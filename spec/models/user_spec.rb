require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

  describe 'user' do
    it 'the mailbox name should be subject.name' do
      expect(subject.mailboxer_name).to eq subject.name
    end
  end
end
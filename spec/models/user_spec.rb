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

    it 'the mailbox email should be subject.email' do
      expect(subject.mailboxer_email(subject.email)).to eq subject.email
    end
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :name }
  end
end

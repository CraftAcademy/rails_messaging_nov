require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

  describe 'Mailboxer methods' do
    it '#mailbox_name should return subject.name' do
      expect(subject.mailboxer_name).to eq subject.name
    end

    it '#mailbox_email should return subject.email' do
      expect(subject.mailboxer_email(subject.email)).to eq subject.email
    end
  end

  describe 'DB table' do
    it { should have_db_column :name }
    it { should have_db_column :email }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
  end

  describe 'validate uniqueness' do
    it { should validate_uniqueness_of(:name) }
  end
end
require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryBot.build(:user) }

  subject { @user }

  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:password) }
  it { is_expected.to respond_to(:password_confirmation) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to validate_confirmation_of(:password) }
  it { is_expected.to allow_value('example@domain.com').for(:email) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_uniqueness_of(:auth_token) }

  describe "#generate_authentication_token!" do
    it "generates a unique token" do
      Devise.stub(:friendly_token).and_return("auniquetoken123")
      @user.generate_authentication_token!
      expect(@user.auth_token).to eq("auniquetoken123")
    end

    it "generates another token when one has already been taken" do
      existing_user = FactoryBot.create(:user, auth_token: "auniquetoken123")
      @user.generate_authentication_token!
      expect(@user.auth_token).not_to eq(existing_user.auth_token)
    end
  end
end

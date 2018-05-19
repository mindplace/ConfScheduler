# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create :user }

  describe "attributes" do
    it { is_expected.to respond_to(:email) }
    it { is_expected.to respond_to(:encrypted_password) }
    it { is_expected.to respond_to(:reset_password_token) }
    it { is_expected.to respond_to(:reset_password_sent_at) }
    it { is_expected.to respond_to(:remember_created_at) }
    it { is_expected.to respond_to(:sign_in_count) }
    it { is_expected.to respond_to(:current_sign_in_at) }
    it { is_expected.to respond_to(:last_sign_in_at) }
    it { is_expected.to respond_to(:created_at) }
    it { is_expected.to respond_to(:updated_at) }
  end

  describe "associations" do
    it { is_expected.to have_many(:conf_attendees) }
    it { is_expected.to have_many(:conferences) }
    it { is_expected.to have_many(:events) }
    it { is_expected.to have_one(:admin_account) }
    it { is_expected.to have_many(:conf_admin_accounts) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }
  end

  describe "#admin?" do
    context "has an admin account" do
      before { subject.create_admin_account }

      it "returns true" do
        expect(subject.admin?).to eq(true)
      end
    end

    context "does not have an admin account" do
      it "returns false" do
        expect(subject.admin?).to eq(false)
      end
    end
  end

end

require 'rails_helper'

RSpec.describe ConferencesHelper, type: :helper do
  include Devise::TestHelpers

  describe "#attending_conference?" do
    let(:user) { create :user }
    let(:conference) { create :conference }

    context "when a current_user exists" do
      before { sign_in user }

      context "when the current_user is not yet attending this conference" do
        it "returns false" do
          expect(helper.attending_conference?(conference)).to eq(false)
        end
      end

      context "when the current_user is already attending this conference" do
        before do
          conference.attend_as_attendee(user)
        end

        it "returns true" do
          expect(helper.attending_conference?(conference)).to eq(true)
        end
      end
    end

    context "when there is no current_user" do
      it "returns false" do
        expect(helper.attending_conference?(conference)).to eq(false)
      end
    end
  end
end

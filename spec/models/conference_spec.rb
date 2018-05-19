# == Schema Information
#
# Table name: conferences
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  url         :string           not null
#  description :text
#  start_date  :date             not null
#  end_date    :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Conference, type: :model do
  subject { create :conference }

  describe "attributes" do
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:url) }
    it { is_expected.to respond_to(:description) }
    it { is_expected.to respond_to(:start_date) }
    it { is_expected.to respond_to(:end_date) }
  end

  describe "associations" do
    it { is_expected.to have_many(:conf_admins) }
    it { is_expected.to have_many(:conf_attendees) }
    it { is_expected.to have_many(:events) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:url) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
    it { is_expected.to validate_uniqueness_of(:url) }
  end

  describe "#attend_as_attendee" do
    context "given a user" do
      let(:user) { create :user }

      context "who is not yet attending" do
        it "adds the user as an attendee" do
          expect{ subject.attend_as_attendee(user) }.to change{ subject.conf_attendees.count }.by(1)
        end
      end

      context "who is already attending" do
        before { ConfAttendee.create!(user_id: user.id, conference_id: subject.id ) }

        it "does not add a new attendee to its list" do
          expect{ subject.attend_as_attendee(user) }.not_to change{ subject.conf_attendees.count }
        end
      end

      it "returns the conf_attendee account" do
        expect(subject.attend_as_attendee(user)).to be_an_instance_of(ConfAttendee)
      end
    end

    context "when not given a user" do
      it "does not add a new attendee to its list" do
        expect{ subject.attend_as_attendee }.not_to change{ subject.conf_attendees.count }
      end

      it "returns false" do
        expect(subject.attend_as_admin).to eq(false)
      end
    end
  end

  describe "#attend_as_admin" do
    # TODO -- add this test
  end
end

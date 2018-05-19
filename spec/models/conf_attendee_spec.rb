# == Schema Information
#
# Table name: conf_attendees
#
#  id            :bigint(8)        not null, primary key
#  user_id       :bigint(8)
#  conference_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe ConfAttendee, type: :model do
  subject { create :conf_attendee }

  describe "associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:conference) }
    it { is_expected.to have_many(:event_attendees) }
    it { is_expected.to have_many(:events) }
  end

end

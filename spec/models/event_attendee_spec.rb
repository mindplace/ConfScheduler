# == Schema Information
#
# Table name: event_attendees
#
#  id               :bigint(8)        not null, primary key
#  conf_attendee_id :bigint(8)
#  event_id         :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe EventAttendee, type: :model do
  subject { build :event_attendee }

  describe "associations" do
    it { is_expected.to belong_to(:conf_attendee) }
    it { is_expected.to belong_to(:event) }
  end
  
end

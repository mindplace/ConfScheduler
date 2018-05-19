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
  pending "add some examples to (or delete) #{__FILE__}"
end

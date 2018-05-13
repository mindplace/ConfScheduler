# == Schema Information
#
# Table name: event_attendees
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  event_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventAttendee < ApplicationRecord

  belongs_to :users
  belongs_to :event

end

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

class ConfAttendee < ApplicationRecord

  belongs_to :user
  belongs_to :conference

end

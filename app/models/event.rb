# == Schema Information
#
# Table name: events
#
#  id            :bigint(8)        not null, primary key
#  name          :string           not null
#  host          :string           not null
#  description   :text
#  location      :string
#  conference_id :bigint(8)
#  starts        :datetime
#  ends          :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Event < ApplicationRecord

  belongs_to :conference

  has_many :event_attendees
  has_many :users, through: :event_attendees

end

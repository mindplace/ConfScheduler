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

class Conference < ApplicationRecord

  has_many :conf_attendees
  has_many :users, through: :conf_attendees
  # has_many :admins, -> { where(admin: true) }, class_name: "User"

  has_many :events

end

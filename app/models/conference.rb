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

  has_many :conf_admins
  has_many :conf_attendees

  has_many :events

  validates_presence_of :name, :url, :description, :start_date, :end_date

  validates_uniqueness_of :url

  # -- Attendee methods ------------------------------------------

  def attend_as_attendee(user = nil)
    return false unless user
    conf_attendees.find_or_create_by(user_id: user.id)
  end

  def attend_as_admin(user = nil)
    return false unless user && user.admin?
    attend_as_attendee(user)
    conf_admins.find_or_create_by(admin_id: user.admin_account.id)
  end

end

# == Schema Information
#
# Table name: admins
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Admin < ApplicationRecord
  
  belongs_to :user

  has_many :conf_admins
  has_many :conferences, through: :conf_admins

end

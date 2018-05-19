# == Schema Information
#
# Table name: conf_admins
#
#  id            :bigint(8)        not null, primary key
#  admin_id      :bigint(8)
#  conference_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ConfAdmin < ApplicationRecord
  
  belongs_to :admin
  belongs_to :conference

end

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

require 'rails_helper'

RSpec.describe ConfAdmin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

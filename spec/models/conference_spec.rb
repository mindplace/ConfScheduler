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

require 'rails_helper'

RSpec.describe Conference, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

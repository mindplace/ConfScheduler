# == Schema Information
#
# Table name: admins
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do

  factory :admin do
    user
  end

end

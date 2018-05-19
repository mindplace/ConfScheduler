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

FactoryBot.define do

  factory :conference do
    name Faker::Company.name
    sequence(:url) { |n| "#{n}#{Faker::Internet.domain_word}" }
    description Faker::Lorem.paragraph
    start_date (Date.today + 50.days)
    end_date (Date.today + 53.days)
  end

end

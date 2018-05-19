# == Schema Information
#
# Table name: events
#
#  id            :bigint(8)        not null, primary key
#  name          :string           not null
#  host          :string           not null
#  description   :text
#  location      :string
#  event_type    :string
#  conference_id :bigint(8)
#  starts_at     :datetime
#  ends_at       :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do

  factory :event do
    name Faker::Zelda.game
    host Faker::Name.name
    description Faker::Lorem.paragraph
    location Faker::Address.street_address
    event_type Event::EVENT_TYPES.sample
    conference
    starts_at Time.now + 50.days
    ends_at Time.now + 50.days + 2.hours
  end

end

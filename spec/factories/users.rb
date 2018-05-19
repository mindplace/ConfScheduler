FactoryBot.define do
  factory :user do
    password Faker::Internet.password
    sequence(:email) { |n| "#{n}#{Faker::Internet.email}" }
    last_sign_in_ip { Faker::Internet.ip_v4_address }
  end

end

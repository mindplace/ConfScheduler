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


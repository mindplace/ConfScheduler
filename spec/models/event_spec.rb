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

require 'rails_helper'

RSpec.describe Event, type: :model do

  describe "attributes" do
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:host) }
    it { is_expected.to respond_to(:description) }
    it { is_expected.to respond_to(:location) }
    it { is_expected.to respond_to(:event_type) }
    it { is_expected.to respond_to(:starts_at) }
    it { is_expected.to respond_to(:ends_at) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:conference) }
    it { is_expected.to have_many(:event_attendees) }
    it { is_expected.to have_many(:attendees) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:host) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:location) }
    it { is_expected.to validate_presence_of(:event_type) }
    it { is_expected.to validate_presence_of(:conference) }
    it { is_expected.to validate_presence_of(:starts_at) }
    it { is_expected.to validate_presence_of(:ends_at) }
    it { is_expected.to validate_inclusion_of(:event_type).in_array(Event::EVENT_TYPES) }
  end

end

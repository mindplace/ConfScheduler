# == Schema Information
#
# Table name: admins
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Admin, type: :model do
  subject { build :admin }

  describe "associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:conf_admins) }
    it { is_expected.to have_many(:conferences) }
  end

end

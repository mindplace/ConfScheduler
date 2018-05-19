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
  subject { build :conf_admin }

  describe "associations" do
    it { is_expected.to belong_to(:admin) }
    it { is_expected.to belong_to(:conference) }
  end

end

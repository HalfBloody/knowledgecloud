# == Schema Information
#
# Table name: websites
#
#  id          :integer          not null, primary key
#  url         :string
#  user_email  :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class WebsiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

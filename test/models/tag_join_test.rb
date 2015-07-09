# == Schema Information
#
# Table name: tag_joins
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  website_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TagJoinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

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

class TagJoin < ActiveRecord::Base
  belongs_to :website
  belongs_to :tag
end

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

class Website < ActiveRecord::Base
  has_many :tag_joins
  has_many :tags, through: :tag_joins
end

# == Schema Information
#
# Table name: hoods
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  position :integer
#

class Hood < ActiveRecord::Base
  has_and_belongs_to_many :users
end

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

  def prior
    if position == 1
      Hood.find_by(position: 34)
    else
      Hood.find_by(position: position - 1)
    end
  end

  def next
    if position == 34
      Hood.find_by(position: 1)
    else
      Hood.find_by(position: position + 1)
    end
  end
end

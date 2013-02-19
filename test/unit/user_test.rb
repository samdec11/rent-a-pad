# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  age                 :integer
#  gender              :string(255)
#  email               :string(255)
#  max_rent            :decimal(, )
#  image               :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  username            :string(255)      default(""), not null
#  encrypted_password  :string(255)      default(""), not null
#  remember_created_at :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

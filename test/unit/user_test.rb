# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  name            :string(255)
#  age             :integer
#  gender          :string(255)
#  email           :string(255)
#  image           :text
#  description     :text
#  likes           :text
#  dislikes        :text
#  pets            :string(255)
#  roommate        :text
#  max_rent        :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

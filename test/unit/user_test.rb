# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  password_digest :string(255)
#  name            :string(255)
#  age             :integer
#  gender          :string(255)
#  email           :string(255)
#  image           :text
#  description     :text
#  occupation      :string(255)
#  sociability     :integer
#  sleep_hours     :integer
#  is_smoker       :boolean
#  cooks           :string(255)
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

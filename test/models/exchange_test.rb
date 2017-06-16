# == Schema Information
#
# Table name: exchanges
#
#  id                 :integer          not null, primary key
#  last_communication :datetime
#  usera              :integer
#  userb              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

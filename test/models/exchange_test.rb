# == Schema Information
#
# Table name: exchanges
#
#  id             :integer          not null, primary key
#  first_user_id  :integer
#  second_user_id :integer
#  last_sent_time :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

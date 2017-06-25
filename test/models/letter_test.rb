# == Schema Information
#
# Table name: letters
#
#  id          :integer          not null, primary key
#  exchange_id :integer
#  sender_id   :integer
#  receiver_id :integer
#  body        :string
#  sent_time   :datetime
#  reported    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class LetterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

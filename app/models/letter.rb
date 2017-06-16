# == Schema Information
#
# Table name: letters
#
#  id            :integer          not null, primary key
#  writer_id     :integer
#  receiver_id   :integer
#  sent_time     :datetime
#  readable_time :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Letter < ApplicationRecord
  
end

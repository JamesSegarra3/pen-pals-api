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

class Exchange < ApplicationRecord
  
end

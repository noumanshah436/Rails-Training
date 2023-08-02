# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  status     :boolean
#  client_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord
  belongs_to :client
end

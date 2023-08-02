# == Schema Information
#
# Table name: clients
#
#  id           :integer          not null, primary key
#  name         :string
#  orders_count :integer
#  looked       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Client < ApplicationRecord
  has_one :address
  has_many :orders
end

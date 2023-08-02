# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  postcode   :string
#  client_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Address < ApplicationRecord
  belongs_to :client
end

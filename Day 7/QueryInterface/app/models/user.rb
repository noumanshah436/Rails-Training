# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  job_title  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :products
end

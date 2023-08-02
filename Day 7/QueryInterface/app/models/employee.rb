# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  status     :string
#  name       :string
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Employee < ApplicationRecord
  belongs_to :company
end

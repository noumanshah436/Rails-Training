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
require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: depts
#
#  id         :integer          not null
#  deptno     :integer          not null, primary key
#  dname      :string(20)
#  loc        :string(20)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class DeptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

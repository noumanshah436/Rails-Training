# == Schema Information
#
# Table name: emps
#
#  id         :integer          not null
#  empno      :integer          not null, primary key
#  ename      :string(10)
#  job        :string(9)
#  mgr        :integer
#  hiredate   :date
#  sal        :decimal(7, 2)
#  comm       :decimal(7, 2)
#  deptno     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class EmpTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

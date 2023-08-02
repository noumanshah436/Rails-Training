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
class Dept < ApplicationRecord
  self.primary_key = "deptno"
  has_many :emps, foreign_key: "deptno"

  # foreign_key is used to get employees of that department
  # It's primary key match with the foreign key(deptno column in employees)

  #  SELECT  "emps".* FROM "emps" WHERE "emps"."deptno" = ? ORDER BY "emps"."empno" ASC LIMIT ?  [["deptno", 10], ["LIMIT", 11]]
end

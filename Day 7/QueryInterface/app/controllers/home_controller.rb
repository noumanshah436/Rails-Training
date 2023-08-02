class HomeController < ApplicationController
  def index
    @query_result = Emp.select("ename, sal * 12 AS Annual_Salary").order("Annual_Salary DESC")
  end
end

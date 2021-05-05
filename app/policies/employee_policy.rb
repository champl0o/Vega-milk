class EmployeePolicy < AllowedCrudPolicy
  def salary_report?
    true
  end
end

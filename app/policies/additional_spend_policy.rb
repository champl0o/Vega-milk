class AdditionalSpendPolicy < AllowedCrudPolicy
  def finance_report?
    true
  end

  def index?
    user.role == 'admin' || user.role == 'sales_manager'
  end
end

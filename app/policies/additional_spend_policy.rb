class AdditionalSpendPolicy < AllowedCrudPolicy
  def finance_report?
    true
  end
end

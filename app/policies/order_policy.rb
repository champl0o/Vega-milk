class OrderPolicy < AllowedCrudPolicy
  def income_report?
    true
  end
end

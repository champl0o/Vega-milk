class OrderPolicy < AllowedCrudPolicy
  def income_report?
    true
  end

  def index?
    user.role == 'admin' || user.role == 'sales_manager' || user.role == 'user'
  end

  def create?
    user.role == 'admin'
  end

  def update?
    user.role == 'admin' || user.role == 'sales_manager'
  end

  def destroy?
    user.role == 'admin'
  end
end

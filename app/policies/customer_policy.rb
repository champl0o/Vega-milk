class CustomerPolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin' || user.role == 'sales_manager'
  end
end

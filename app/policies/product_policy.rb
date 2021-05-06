class ProductPolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin'
  end
end

class PackedProductPolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin'
  end
end

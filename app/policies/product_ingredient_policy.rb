class ProductIngredientPolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin'
  end
end

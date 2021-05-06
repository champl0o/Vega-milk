class IngredientPolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin'
  end
end

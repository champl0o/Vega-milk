class BoughtIngredientPolicy < AllowedCrudPolicy
  def bought_ingredients_report?
    user.role == 'admin'
  end

  def index?
    user.role == 'admin' || user.role == 'user'
  end

  def create?
    user.role == 'admin' || user.role == 'user'
  end

  def update?
    user.role == 'admin'
  end

  def destroy?
    user.role == 'admin'
  end
end

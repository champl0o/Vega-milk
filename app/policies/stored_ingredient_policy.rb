class StoredIngredientPolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin' || user.role == 'user' || user.role == 'storage_manager'
  end

  def create?
    user.role == 'admin' || user.role == 'storage_manager'
  end

  def update?
    user.role == 'admin' || user.role == 'storage_manager'
  end

  def destroy?
    user.role == 'admin' || user.role == 'storage_manager'
  end
end

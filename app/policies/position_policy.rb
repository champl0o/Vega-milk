class PositionPolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin' || user.role == 'hr'
  end

  def create?
    user.role == 'admin'
  end

  def update?
    user.role == 'admin'
  end

  def destroy?
    user.role == 'admin'
  end
end

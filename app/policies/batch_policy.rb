class BatchPolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin'
  end
end

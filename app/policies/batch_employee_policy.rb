class BatchEmployeePolicy < AllowedCrudPolicy
  def index?
    user.role == 'admin'
  end
end

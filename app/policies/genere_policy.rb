class GenerePolicy < ApplicationPolicy
  attr_reader :current_user

  def initialize(current_user, _record)
    @current_user = current_user
  end

  def new?
    create?
  end

  def create?
    current_user.admin?
  end

  def index?
    current_user.admin?
  end

  def update?
    current_user.admin?
  end

  def destroy?
    current_user.admin?
  end
end

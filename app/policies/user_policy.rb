class UserPolicy < ApplicationPolicy
  attr_reader :current_user

  def initialize(current_user, _records)
    @current_user = current_user
  end

  def index?
    current_user.admin?
  end
end

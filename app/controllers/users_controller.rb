class UsersController < ApplicationController
  include Pundit::Authorization
  def index
    @users = User.order(created_at: :desc)
  end
end

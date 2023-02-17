class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # def after_sign_in_path_for(_resource)
  #   homes_path
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name surname contact_number email password])
    # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :surname, :contact_number, :email, :password, :current_password) }
  end

  def user_not_authorized(exception)
    policy_name = exception.policy.class.to_s.underscore

    err_message = t "#{policy_name}.#{exception.query}", scope: 'pundit', default: :default
    render json: { message: err_message }, status: :unauthorized
  end
end

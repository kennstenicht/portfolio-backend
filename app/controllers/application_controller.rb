class ApplicationController < JSONAPI::ResourceController
  include Knock::Authenticable
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :set_locale

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  private

  def context
    {user: current_user}
  end

  def user_not_authorized
    head :forbidden
  end
end

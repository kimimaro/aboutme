class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include HttpAcceptLanguage::AutoLocale

  protect_from_forgery with: :exception

  before_action :set_locale

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { locale: I18n.locale }
  end

  # 不能使用private？
  # private:
    def set_locale
      logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
      I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
      logger.debug "* Locale set to '#{I18n.locale}'"
    end
end

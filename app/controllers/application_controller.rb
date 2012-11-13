class ApplicationController < ActionController::Base
  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    #I18n.locale = FUNCTION || I18n.default_locale
  end

#  def extract_locale_from_accept_language_header
#    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
#  end

#  def extract_locale_from_tld
#    parsed_locale = request.host.split('.').last
#    I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale  : nil
#  end

#  def extract_locale_from_subdomain
#    parsed_locale = request.subdomains.first
#    I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale : nil
#  end
#  link_to("Deutsch", "#{APP_CONFIG[:deutsch_website_url]}#{request.env['REQUEST_URI']}")

  protect_from_forgery

  private

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

end

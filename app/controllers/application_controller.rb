class ApplicationController < ActionController::Base
  protect_from_forgery

  def decorator_url
    'http://www.posten.no/kundeservice/form-decorator'
  end
end

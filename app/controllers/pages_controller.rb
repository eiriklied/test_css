class PagesController < ApplicationController
  def show
    template = params[:page_id] || 'start'
    render template
  end
end
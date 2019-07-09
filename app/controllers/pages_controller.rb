class PagesController < ApplicationController
 def index
  render template: "pages/#{params[:page]}"
 end

  def about
  end

  def contact
  end
end

class PagesController < ApplicationController
 def index
  render :file => 'pages/index.html'
 end

  def about
  end

  def contact
  end
end

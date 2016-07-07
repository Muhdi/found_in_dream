class WelcomeController < ApplicationController

  def index
    render "index"
  end

  def about
    render "about"
  end

  def cast
    render "cast"
  end

  def contact
    render "contact"
  end

end

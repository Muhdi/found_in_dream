class WelcomeController < ApplicationController

  def index
    render "index"
  end

  def bio
    render "bio"
  end

  def previous_work
    render "previous_work"
  end

  def contact
    render "contact"
  end
  
end

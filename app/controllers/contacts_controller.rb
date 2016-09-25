class ContactsController < ApplicationController

  def create
    ContactMailer.send_contact_email(email_params).deliver!
    redirect_to controller: 'welcome', action: 'contact'
  end

  private

  def email_params
    email_params = {}
    email_params[:email] = params[:email]
    email_params[:name] = params[:name]
    email_params[:message] = params[:message]
    email_params
  end

end

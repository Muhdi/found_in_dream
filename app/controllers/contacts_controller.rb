class ContactsController < ApplicationController

  def create
    testm = Message.new(email_params)
    if testm.valid?
      ContactMailer.send_contact_email(email_params).deliver!
    else
      flash[:error] = "Please correct the form"
    end
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

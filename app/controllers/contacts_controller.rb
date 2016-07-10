class ContactsController < ApplicationController

  def create
    ContactMailer.send_contact_email.deliver!
    redirect_to controller: 'welcome', action: 'contact'
  end

end

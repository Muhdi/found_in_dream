class ContactMailer < ApplicationMailer

  default :from => 'any_from_address@example.com'

 # send a signup email to the user, pass in the user object that   contains the user's email address
 def send_contact_email
   mail( :to => "jemaltp@gmail.com",
   :subject => 'Thanks for contacting us' )
 end

end

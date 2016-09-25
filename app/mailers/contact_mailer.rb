class ContactMailer < ApplicationMailer

  default :to => 'jemaltp@gmail.com'

 def send_contact_email(email_info)
   email_with_name = %("#{email_info[:name]}" <#{email_info[:email]}>)
   mail({
     :to => "jemaltp@gmail.com",
     :from => email_with_name,
     :subject => 'Contact from website',
     :body => email_info[:message]
     })
 end

end

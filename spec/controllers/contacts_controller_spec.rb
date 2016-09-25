require "rails_helper"

RSpec.describe ContactsController, :type => :controller do

  it "should send email with provided information" do
    params = {
      name: "Jemal",
      email: "jemal@email.com",
      message: "This is a great movie!"
    }

    mail = double("Mail", deliver!: true)
    expect(ContactMailer).to receive(:send_contact_email).with(params).and_return(mail)
    post :create, params
  end

end

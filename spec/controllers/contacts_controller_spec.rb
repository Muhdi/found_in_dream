require "rails_helper"

RSpec.describe ContactsController, :type => :controller do

  it "should send email with provided information" do
    params = {
      name: "Jemal",
      email: "jemal@email.com",
      message: "This is a great movie!"
    }
    valid_message = double(Message, valid?: true)
    expect(Message).to receive(:new).with(params).and_return valid_message

    mail = double("Mail", deliver!: true)
    expect(ContactMailer).to receive(:send_contact_email).with(params).and_return(mail)
    post :create, params
  end

  it 'should not send email if message is not valid' do
    params = {
      name: "",
      email: "jemal@email.com",
      message: "This is a great movie!"
    }
    invalid_message = double(Message, valid?: false)
    expect(Message).to receive(:new).with(params).and_return invalid_message
    expect(ContactMailer).not_to receive(:send_contact_email)
    post :create, params
  end

end

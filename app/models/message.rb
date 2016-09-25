class Message
  include ActiveModel::Validations
  
  attr_accessor :name, :email, :message

  def initialize(email_message)
      @name = email_message[:name]
      @email = email_message[:email]
      @message = email_message[:message]
  end

  def valid?
    return false if @name.blank? || @email.blank? || @message.blank?
    true
  end

end

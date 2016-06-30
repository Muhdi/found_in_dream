class Message < ActiveRecord::Base
  attr_accessor :name, :email, :message

  def initialize(name, email, message)

      @name = name
      @email = email
      @message = message
  end

end

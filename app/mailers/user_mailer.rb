class UserMailer < ApplicationMailer
  default from: "afidedev26@gmail.com"

  def contact_form(email, name, message)
    @message = message
      mail(:from    => email,
           :to      => "afidedev26@gmail.com",
           :subject => "New message from #{name}.")
  end
end

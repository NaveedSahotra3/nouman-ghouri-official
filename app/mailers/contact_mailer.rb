class ContactMailer < ApplicationMailer
  def contact_email(name, from_email, message)
    @name = name
    @message = message

    mail(
      from: from_email,  # Dynamically set "from"
      to: 'naveed.sahotra3@gmail.com',
      subject: 'New Contact Form Submission',
      reply_to: from_email  # Ensures replies go to the user
    )
  end
end

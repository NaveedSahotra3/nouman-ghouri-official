class ContactController < ApplicationController
  def index
  end

  def create
    name = params[:name]
    email = params[:email]
    message = params[:message]

    if name.present? && email.present? && message.present?
      ContactMailer.contact_email(name, email, message).deliver_now
      flash[:notice] = "Your message has been sent successfully!"
    else
      flash[:alert] = "All fields are required."
    end

    redirect_to root_path
  end
end

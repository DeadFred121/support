class SupportMailer < ApplicationMailer
  def contact_support(from_email, message)
    @from_email = from_email
    @message = message
    mail(to: ENV.fetch('EMAIL'), subject: "Support Request from #{@from_email}")
  end
end

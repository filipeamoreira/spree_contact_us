class InquiryMailer < ActionMailer::Base
  def email_of_inquiry(inquiry)
    @inquiry = inquiry
    mail(:subject => "#{Spree::Config[:site_name]} Formulario de contacto",
         :from => inquiry.email,
         :to => "defensor.del.pezcador@pezcalo.com")
  end
end

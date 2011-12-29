class InquiryMailer < ActionMailer::Base
  
  def email_of_inquiry(inquiry)
    @inquiry = inquiry
    mail(:subject => "#{Spree::Config[:site_name]} Formulario de contacto", :from => "jesus.sayar@softwhisper.es",
         :to => "xuxoceleste@gmail.com")
  end
end

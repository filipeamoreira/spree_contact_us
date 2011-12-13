class InquiryMailer < ActionMailer::Base

    def notification(inquiry)
        subject    "#{Spree::Config[:site_name]} Formulario de contacto recibido"
        body       :inquiry => inquiry
        recipients "defensor.del.pezcador@pezcalo.com"
        #bcc        Spree::Config[:contact_form_bcc]
        from       inquiry.email
    end
    
    def comment_received(comment)
        subject    "#{Spree::Config[:site_name]} Feedback Received"
        body       :comment => comment
        recipients Spree::Config[:contact_form_to]
        bcc        Spree::Config[:contact_form_bcc]
        from       comment.user.email
    end
    
    
end

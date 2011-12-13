class InquiriesController < ApplicationController
  helper 'spree/base'
  
  resource_controller
  
  #ssl_required :new
  
  create.flash "Got it! We'll be back in touch shortly."
  
  create.after do
    if params[:mailing_list] 
      # make call to mail engine API
    end
    
  end
  
  def new
    render :layout => false
  end  
  
  def index
    redirect_to(new_inquiry_url) unless params[:inquiry]
  end
  
  
end

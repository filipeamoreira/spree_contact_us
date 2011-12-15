class Admin::InquiriesController < Admin::BaseController 

  layout 'admin'
  
  def index
    @inquiries = Inquiry.all
  end
  
  def show
    @inquiry = Inquiry.find(params[:id])
  end
  
  def destroy
    Inquiry.find(params[:id]).destroy
    flash[:success] = "Inquiry destroyed."
    redirect_to admin_inquiries_url
  end
  
end

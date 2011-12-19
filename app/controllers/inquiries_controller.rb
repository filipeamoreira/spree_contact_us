class InquiriesController < Spree::BaseController
  
  layout false

  def new
    @inquiry = Inquiry.new
  end  
  
  def show
    @inquiry = Inquiry.find(params[:id])
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.save
      InquiryMailer.email_of_inquiry(@inquiry).deliver
      flash[:success] = "Message sent!"
      redirect_to @inquiry
    else
      render 'new'
    end
  end
  
  
end

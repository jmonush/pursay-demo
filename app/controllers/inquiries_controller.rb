class InquiriesController < ApplicationController
  def create
    inquiry = Inquiry.new(create_inquiry_params)
    if inquiry.save
      flash[:success]= "Created new inquiry."
      redirect_to root_path
    else
      flash[:error]= "Didn't create new inquiry."
      redirect_to root_path
    end
  end
  
  def index
    @title = "All Inquiries"
    @inquiries = Inquiry.all
  end
  
  def show
    @inquiry = Inquiry.find(params[:id])
  end
  
  private
    def create_inquiry_params
      params.require(:inquiry).permit(:first_name, :last_name)
    end
end
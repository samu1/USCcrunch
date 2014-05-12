class InsFirstsController < ApplicationController
  before_filter :is_login?
  layout :get_layout
  
  def new
    @insfirst = InsFirst.new
      end
  def index 
    @insfirsts = InsFirst.all
  end
  
  def create
    @insfirst = InsFirst.new(params[:ins_first])
    if @insfirst.save
     flash[:notice] = "marks created!"
     redirect_to classes_path
    else
      render action: "new"
    end
    
  end
  def destroy
    @insfirst = InsFirst.find(params[:ins_first])
    @insfirst.destroy
        sign_in(current_user)
    redirect_to classes_path
  end
end

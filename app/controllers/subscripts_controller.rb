class SubscriptsController < ApplicationController
def index
end 
  
  def new
    @subscript = Subscript.new
 end

  def create 
    @subscript = Subscript.new(subscript_params)
    unless @subscript.save
      redirect_to new_subscript_path
    end 
  end 

  def subscript_params
    params.require(:subscript).permit(:name, :email, :phone, :description, :laguage, :schooling)
  end 
end 
class CareGiversController < ApplicationController
  
  def new 
    @care_giver = CareGiver.new
  end
  
  def create
    @care_giver = CareGiver.new(care_giver_params)
    if @care_giver.save
      #log them in
      session[:care_giver_id] = @care_giver.id
      #redirect to the show page
      redirect_to @care_giver
    else
      render :new
    end
  end
  
  def show
  end
  
  private
  
  def care_giver_params
    params.require(:care_giver).permit(:username, :email, :password)
  end
  
  
end

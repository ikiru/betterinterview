class RegistrationsController < ApplicationController

  def new
  
  end

  private
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :phone)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :phone)
  end
end

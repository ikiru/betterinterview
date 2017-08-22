class HomesController < ApplicationController
  def index
      if user_signed_in?
      redirect_to images_path
  else
      redirect_to landing_index_path
    end
  end
end

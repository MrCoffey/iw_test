class HomeController < ApplicationController
  def wellcome
  	if user_signed_in?
  		redirect_to todo_lists_url, notice: "Wellcome"
  	end	
  end
end

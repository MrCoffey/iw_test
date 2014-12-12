Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  
  root 'home#wellcome'

  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end	
    end	
  end  

end

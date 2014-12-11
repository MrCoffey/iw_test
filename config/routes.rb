Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root 'todo_lists#index'

  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end	
    end	
  end  

end

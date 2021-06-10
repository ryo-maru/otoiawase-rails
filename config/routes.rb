Rails.application.routes.draw do
 get '/contacts',to: 'contacts#index'
 resources :contacts
end

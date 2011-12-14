Rails.application.routes.draw do
  
  resources :inquiries, :as => 'contact'
  
  namespace :admin do |admin|
    resources :inquiries
  end 

end


 

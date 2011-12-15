Rails.application.routes.draw do
  
  resources :inquiries
  
  namespace :admin do |admin|
    resources :inquiries
  end 

end


 

Rails.application.routes.draw do
  
  root           'static_pages#home'
  
  get 'about' => 'static_pages#about' 
  
  devise_for :users, 
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
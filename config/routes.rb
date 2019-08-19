Rails.application.routes.draw do
  
  
  # Added by Koudoku.
  mount Koudoku::Engine, at: 'koudoku'
  scope module: 'koudoku' do
    get 'pricing' => 'subscriptions#index', as: 'pricing'
  end


  root           'static_pages#home'
  
  get 'about'     => 'static_pages#about' 
  get 'dashboard' => 'static_pages#dashboard'  
  
  devise_for :users, 
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
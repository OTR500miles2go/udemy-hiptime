Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :items do
    patch :complete
  end

  root 'items#index'
end

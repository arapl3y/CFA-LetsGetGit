Rails.application.routes.draw do

  resources :lists do
    resources :plans
  end

  root 'pages#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

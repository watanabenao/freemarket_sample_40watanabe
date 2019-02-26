Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'products#index'
 resources :users, only: [:index,] do
   collection do
     get 'profile'
     get 'identification'
     get 'logout'
     get 'card'
   end
 end

 resources :products, only: [:show, :new] do
   member do
    get 'confirmation'
  end
 end

end


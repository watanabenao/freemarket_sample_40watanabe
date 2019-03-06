Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    sessions:'users/sessions',
    registration: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'signup', to: 'users/registrations#link'
  end


 root 'products#index'

 resources :profiles, only: [:create, :new] 

 resources :credit_cards, only: [:create, :new] 

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


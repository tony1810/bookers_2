Rails.application.routes.draw do


root to: 'homes#top'
get '/home/about', to: 'homes#about'


   devise_for :users


  resources :users , only: [:show , :edit , :index , :update]
  resources :books , only: [:show , :edit , :index , :update , :create ,:destroy] do
    resource :favorites , only: [:create , :destroy]
    resources :book_comments , only: [:create , :destroy]
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end


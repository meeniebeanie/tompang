Rails.application.routes.draw do

  devise_for :users
  resources :products do
    collection do
      get 'search'
    end
  end
  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/contact', to: 'static_pages#contact_us'
  get '/product/:country', to: 'products#showbycountry'
  get '/about', to: 'static_pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

    devise_for :users
    resources :settings
    resources :contact_forms
    
    root 'site#index'

    get '/dashboard',       to: 'dashboard#index',        as: :dashboard

    get '/about',           to: 'site#about',           as: 'about'
    get '/pca_message',     to: 'site#pca_message',     as: 'pca_message'
    get '/board_directors', to: 'site#board_directors', as: 'board_directors'
    get '/products',        to: 'site#products',        as: 'products'
    get '/members',         to: 'site#members',         as: 'members'
    get '/contact',         to: 'site#contact',         as: 'contact'

    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
end

Rails.application.routes.draw do
  resources :partners
    resources :products
    resources :members
    resources :packs
    resources :boards

    devise_for :users
    resources :settings
    resources :contact_forms
    
    root 'site#index'

    get '/dashboard',           to: 'dashboard#index',        as: :dashboard
    get '/members/details/:id', to: 'site#member_details',    as: :member_details
    get '/quero-ser-membro',    to: 'site#want_member',       as: :want_member

    
    get '/about',           to: 'site#about',           as: 'about'
    get '/pca_message',     to: 'site#pca_message',     as: 'pca_message'
    get '/board_directors', to: 'site#board_directors', as: 'board_directors'

    get '/nossos-products', to: 'site#all_products',    as: 'all_products'
    get '/nossos-products/details/:id', to: 'site#product_detail',    as: 'product_detail'

    get '/all/members',     to: 'site#members',         as: 'all_members'
    get '/contact',         to: 'site#contact',         as: 'contact'

    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
end

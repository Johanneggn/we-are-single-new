Rails.application.routes.draw do
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'clients/index'
  devise_for :users
  root to: 'pages#home'

  namespace :user do
    resources :articles, only: [:index] do
    end
    resources :events, only: [:index, :show] do
      member do
        patch :complete
      end
    end
  end

 resources :events do
  collection do
    get :who
  end
 end

 resources :articles
 resources :clients
end

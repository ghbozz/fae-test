Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  resources :articles, only: [:index, :show]

  namespace :admin do
    resources :articles
    resources :article_categories
  end

  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

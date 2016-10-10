Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'

  resources :links do
    resources :comments, only: [:create, :destroy]
    member do
      put "upvote"
      put "downvote"
    end
  end

  root "links#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: :create
  end
  root to: redirect('/posts')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

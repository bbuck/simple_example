SimpleExample::Application.routes.draw do
  root to: "articles#index"

  resources :articles do
    resources :comments, only: [:create, :destroy]
  end
end

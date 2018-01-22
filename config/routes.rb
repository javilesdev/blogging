Rails.application.routes.draw do
  root "home#index"

  # admin module
  scope module: 'admin', path: 'admin' do
    resources :posts
  end

  # blog module
  resources :demos

  # static routes
  get "/:slug" => "posts#show"
end

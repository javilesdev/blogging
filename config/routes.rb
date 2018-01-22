Rails.application.routes.draw do
  namespace :admin do
    resources :posts
  end
  resources :demos
  scope module: 'admin', path: 'admin' do
    resources :posts
  end
  get "/:slug" => "posts#show"
end

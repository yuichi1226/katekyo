Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :questions
    resource :info
    get 'mypage/index'
  end
  root 'pages#index'
  get 'pages/show'
end

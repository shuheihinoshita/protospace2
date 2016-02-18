Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  get 'users/:id'   =>  'users#show'
end

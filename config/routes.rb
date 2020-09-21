Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  get 'photos/index/:id' => 'photos#index'
  root :to => 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
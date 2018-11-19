Rails.application.routes.draw do
  resources :offerings
  root 'offerings#index'

  resources :courses
  devise_for :users

resources :offerings do
  resources :courses

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

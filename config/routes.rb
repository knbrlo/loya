Rails.application.routes.draw do

  resources :jobs
  # root
  # todo - replace with 'sessions#home'
  root 'jobs#home'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

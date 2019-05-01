Rails.application.routes.draw do
  resources :city
  resources :gossips
  resources :user
  get 'welcomes/:name', to: 'welcomes#home', as: 'welcome'
  get 'contact/contact'
  get 'team/team'

  root 'gossips#index'
end

Rails.application.routes.draw do
  resources :city
  resources :gossips
  resources :user
  resources :comment, except: [:index, :show]
  get 'welcomes/:name', to: 'welcomes#home', as: 'welcome'
  get 'contact/contact'
  get 'team/team'

  root 'gossips#index'
end

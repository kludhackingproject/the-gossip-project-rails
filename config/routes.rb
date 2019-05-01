Rails.application.routes.draw do
  root 'gossips#index'
  resources :gossips
  get 'welcomes/:name', to: 'welcomes#home', as: 'welcome'
  get 'contact/contact'
  get 'team/team'
  get 'user/page/:user', to: 'user#page', as: 'user'
end

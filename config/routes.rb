Rails.application.routes.draw do
  root 'home#home'
  resources :gossipcreation
  get 'gossips/page/:gossip', to:'gossips#page', as: 'gossip'
  get 'home/home'
  get 'welcomes/:name', to: 'welcomes#home', as: 'welcome'
  get 'contact/contact'
  get 'team/team'
  get 'user/page/:user', to: 'user#page', as: 'user'
end

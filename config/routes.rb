Rails.application.routes.draw do
  resources :my_portfolios, except: [:show]
  get 'my_portfolio/:id', to: 'my_portfolios#show', as: 'my_portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end

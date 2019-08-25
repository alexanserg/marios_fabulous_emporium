Rails.application.routes.draw do
  root to: 'welcome_page#index'
  get 'welcome_page/index'
  resources :products do
    resources :reviews
  end
end

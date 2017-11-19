Rails.application.routes.draw do
  resources :sleep_alerts
  get 'welcome/index'
  root 'welcome#index'
  get 'welcome/clock'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

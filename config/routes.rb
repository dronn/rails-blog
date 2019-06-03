Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resource :comments
  end

  root 'welcome#index'
end

Rails.application.routes.draw do
  resources :oferta
  resources :fotos_empresas
  resources :suppliers
  resources :categories
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
end

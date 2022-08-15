Rails.application.routes.draw do
  resources :tenants, only: [:create, :show, :update, :destroy]
  resources :apartments, only: [:index, :create, :show, :update, :destroy]
  resources :leases, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

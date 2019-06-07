Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
  delete "destroy_cocktail/:id", to: "cocktails#destroy", as: "destroy_cocktail"
  resources :cocktails, only: [:new, :create, :show, :index, :destroy] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end

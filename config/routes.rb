Rails.application.routes.draw do
resources :cocktails do

    resources :doses, only: [:create ]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :doses, only: [:destroy]
resources :ingredients, only: [:show]
root "cocktails#index"

end

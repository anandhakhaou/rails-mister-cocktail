Rails.application.routes.draw do
#   get 'doses/create'
#   get 'doses/destroy'
#   get 'cocktails/index'
#   get 'cocktails/show'
#   get 'cocktails/new'
#   get 'cocktails/create'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :cocktails, only: [:index,:show, :new, :create] do
#     resources :doses, only: [:new, :create, :destroy]
#   end
#   resources :doses, only: [:destroy]
#   # root 'cocktails#index'
# end
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
    # resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end

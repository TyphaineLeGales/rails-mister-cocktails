Rails.application.routes.draw do

  resources :cocktails, only: %i[new create] do
    resources :doses, only: %i[new create]
    resources :ingredient, only: %i[new create]
  end
   resources :cocktails, except: %i[new create]
 end

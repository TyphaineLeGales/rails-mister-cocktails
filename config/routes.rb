Rails.application.routes.draw do

  resources :cocktails, only: %i[new create] do
    resources :doses, only: %i[new create destroy]
  end
  resources :cocktails, except: %i[new create]
 end

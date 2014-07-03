Rails.application.routes.draw do

  resources :funerals

  resources :staffs, only: [:index]

  get 'home', action: 'home', controller: 'static', as: :home
  get 'services', action: 'services', controller: 'static', as: :services
  get 'merchandise', action: 'merchandise', controller: 'static', as: :merchandise
  get 'contact', action: 'contact', controller: 'static', as: :contact

  get "admin/obituaries" => "obituaries#index"
  get "admin/obituary/:id" => "obituaries#show"

  get "admin/funerals" => "funerals#index"
  get "admin/funeral/:id" => "funerals#show"

  devise_for :admins
  root 'static#home'

  resources :obituaries, only: [:index, :show]
  resources :guestbooks, only: [:show] do
    resources :guestbook_signatures, only: [:new, :create]
  end
  namespace :admin do
    get 'home', action: 'home', controller: 'static', as: :panel
    resources :obituaries, except: [:index, :show]
    resources :funerals, except: [:index, :show]
    resources :guestbooks
    resources :staffs
  end
end

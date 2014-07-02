Rails.application.routes.draw do

  resources :staffs, only: [:index]

  get 'home', action: 'home', controller: 'static', as: :home
  get 'services', action: 'services', controller: 'static', as: :services
  get 'merchandise', action: 'merchandise', controller: 'static', as: :merchandise
  get 'contact', action: 'contact', controller: 'static', as: :contact

  get "admin/obituaries" => "obituaries#index"
  get "admin/obituary/:id" => "obituaries#show"

  devise_for :admins
  root 'static#home'

  resources :obituaries, only: [:index, :show]
  resources :guestbooks, only: [:show] do
    resources :guestbook_signatures, only: [:new, :create]
  end
  namespace :admin do
    get 'home', action: 'home', controller: 'static', as: :panel
    resources :obituaries
    resources :guestbooks
    resources :staffs
  end
end

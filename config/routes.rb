Rails.application.routes.draw do

  devise_for :users
  resources :pages
  resources :enrolments
  resources :courses
  resources :organizations, shallow: true do
    resources :users
    resources :lessons
    resources :aircrafts
    resources :flights
  end

  resources :entries  do
    resource :user, only: [:show, :edit, :update, :destroy]
    resource :lesson, only: [:show, :edit, :update, :destroy]
    resource :aircraft, only: [:show, :edit, :update, :destroy]
    resource :flight, only: [:show, :edit, :update, :destroy]
  end

  resources :lessons, shallow: true do
    resources :entries
  end
  resources :endorsements, shallow: true do
    resources :lessons
  end
  resources :ratings, shallow: true do
    resources :lessons
  end

  resources :aircrafts, shallow: true do
    resources :endorsements
    resources :ratings
    resources :flights
  end
  resources :flights do
    resource :aircraft, only: [:show, :edit, :update, :destroy]
    resources :users
    resources :entries
  end
  resources :users, shallow: true do
    resources :entries
    resources :endorsements
    resources :ratings
    resources :flights
  end

  get '/', to: 'flights#index'

end

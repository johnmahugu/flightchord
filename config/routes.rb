Rails.application.routes.draw do

  resources :entries, shallow: true do
    resource :user
    resource :lesson
    resource :aircraft
    resource :flight
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
  resources :flights, shallow: true do
    resource :aircraft
    resource :user
    resource :entry
  end
  resources :users, shallow: true do
    resources :entries
    resources :endorsements
    resources :ratings
    resources :flights
  end

  get '/', to: 'flights#index'

end

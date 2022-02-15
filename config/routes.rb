Rails.application.routes.draw do
  resources :points
  resources :events do
    member do
      get :verify
      post :verify
      get :list
      get :delete
    end
  end
  resources :occupations
  resources :alumnis do
    member do
      get "delete", to: "alumnis#delete"
    end
  end
  resources :admins
  resources :students
  resources :users
  resources :attendee_lists
  resources :student_events

  match '/events', to: 'events#index', via: ['get', 'post']
  match '/events/:id/verify', to: 'events#verify', via: ['get', 'post']
  #post 'events/:id/verify', to: 'events#verify'

  

  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

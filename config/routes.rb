Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  resources :points
  resources :events do
    get "list", to: "events#list"
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

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :attendee_lists
  resources :student_events

  get 'events/delete/:id', to:'events#delete', as:'delete_event'
  get 'student_events/signup/:id', to:'student_events#signup', as:'signup_event'
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

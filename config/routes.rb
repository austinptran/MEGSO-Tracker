Rails.application.routes.draw do
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
  resources :attendee_lists
  resources :student_events

  get 'events/delete/:id', to:'events#delete', as:'delete_event'
  get 'student_events/signup/:id', to:'student_events#signup', as:'signup_event'
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

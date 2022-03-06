Rails.application.routes.draw do
  resources :officers
  resources :rewards
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
  resources :attendee_lists
  resources :student_events

  get 'events/delete/:id', to:'events#delete', as:'delete_event'
  get 'events/signup/:id', to:'events#signup', as:'signup_event'
  root 'students#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

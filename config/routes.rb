Rails.application.routes.draw do
  resources :students
  resources :users
  resources :attendee_lists
  resources :events
  resources :companies
  resources :alumnis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :points
  resources :events do
    get "list", to: "events#list"
  end
  resources :occupations
  resources :alumnis
  resources :admins
  resources :students
  resources :users
  resources :attendee_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

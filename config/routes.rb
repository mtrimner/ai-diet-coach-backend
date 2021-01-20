Rails.application.routes.draw do
  resources :foods
  get "/meals/:date", to: "meals#date"
  resources :meals
  get "/macros", to: "macro_params#macros"
  resources :user_weights
  resources :diets
  resources :users, only: [:create, :update]
  post "/login", to: "authentication#login"
  get "/auto_login", to: "authentication#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
 
end

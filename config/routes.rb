Rails.application.routes.draw do
  root 'pages#welcome'
  resources :skills
  resources :users
  resources :skills_users, :except => [:edit, :update, :show]
end

Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'

  devise_for :students

  resources :students
end

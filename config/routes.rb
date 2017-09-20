Rails.application.routes.draw do
  root to: 'pages#home'


  devise_for :students
  devise_for :admins

  resources :students

  resources :admins do
    resources :pairs
  end

end

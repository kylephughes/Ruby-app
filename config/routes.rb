Myapp::Application.routes.draw do
resources :users, only: [:new,:create,:index]
get 'login' => 'users#login'
get 'logout' => 'users#logout'
post 'login' => 'users#process_login', as: 'process_login'
root :to => 'home#index'
end

Myapp::Application.routes.draw do
root :to => 'home#index'
get 'home' => 'home#index'
end

Rails.application.routes.draw do
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'post' => 'test#post'
  get  'get'  => 'test#get'
  get  'get_and_params/:param1' => 'test#get_and_params'
  get  'get_and_params/:param1/:param2' => 'test#get_and_params'
end

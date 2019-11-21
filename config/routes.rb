Rails.application.routes.draw do
  get '/'=>'home#top'
  get 'home/about'=>'home#about'
  get 'user/login'=>'user#login'
  get 'user/registration'=>'user#registration'
  post 'user/create'=>'user#create'
  get 'mypage/profile'=>'mypage#profile'
  post 'post/create' => 'post#create'
  get 'mypage/edit'=>'mypage#edit'
  get 'post/new'=>'post#new'
  get 'post/detail'=>'post#detail'
  get 'post/index' => 'post#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

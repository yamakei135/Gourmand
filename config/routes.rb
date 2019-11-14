Rails.application.routes.draw do
  get '/'=>'home#top'
  get 'home/about'=>'home#about'
  get 'user/login'=>'user#login'
  get 'user/registration'=>'user#registration'
  get 'mypage/profile'=>'mypage#profile'
  get 'mypage/edit'=>'mypage#edit'
  get 'post/new'=>'post#new'
  get 'post/detail'=>'post#detail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

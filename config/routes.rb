Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  resources :tweets do
    post 'likes', to: 'tweets#likes'
    post 'retweet', to: 'tweets#retweet'
  end
  devise_for :users
  get 'home/index'
  #get 'users/follow'
  post 'follow/:friend_id', to: 'users#follow', as: 'users_follow'

  get 'all_tweets', to: 'home#all_tweets', as: 'all_tweets'

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

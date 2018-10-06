Rails.application.routes.draw do
  get 'channels/', to: 'channels#index'
  get 'channels/new'
  post 'channels/new', to: 'channels#create'
  get 'channels/:channel_id', to: 'channels#show', as: :channel_show
  post 'channels/join/:channel_id', to: 'channels#join', as: :channel_join
  devise_for :users
  get 'messages/', to: 'channels#index'
  get '/', to: 'channels#index'
  post 'messages/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

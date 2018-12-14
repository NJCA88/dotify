Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    resources :users
    resource :session
    resources :songs
    resources :playlists
    resources :albums, only: [:index, :show]
    resources :playlist_songs, only: [:create, :destroy]
  end
  root 'static_pages#root'
end

Rails.application.routes.draw do
  resources :songs, except: [:new, :edit]
  resources :comments
  resources :playlists
  resources :people
  resources :examples, except: [:new, :edit]
  get '/song' => 'songs#search_songs'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end

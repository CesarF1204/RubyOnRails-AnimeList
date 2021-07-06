Rails.application.routes.draw do
  root 'animes#index'
  get 'animes/new' => 'animes#create'
  post 'create_process' => 'animes#create_process'
  get 'animes/:id' => 'animes#show'
  get 'animes/:id/edit' => 'animes#edit'
  patch 'edit_process/:id' => 'animes#update'
  delete 'delete_process/:id' => 'animes#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

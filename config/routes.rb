Rails.application.routes.draw do
  devise_for :users
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#create'
  get 'todos/new'
  get 'todos/:id/edit', to: 'todos#edit', as: :edit_todo
  get 'todos/:id', to: 'todos#show', as: :todo
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end

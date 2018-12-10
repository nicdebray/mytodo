Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'todos', to: 'todos#index'
  get 'todos/new'
  get 'todos/:id', to: 'todos#show', as: :todo
  post 'todos', to: 'todos#create'
  get 'todos/edit'
  get 'todos/update'
  get 'todos/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end

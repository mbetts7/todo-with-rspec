TodoWithRspec::Application.routes.draw do

  # resources :todos

  # root to: 'todos#index'

  get '/todos', to: 'todos#index', as: 'todos'

  get '/todos/new', to: 'todos#new', as: 'new_todo'

  post '/todos', to: 'todos#create'

  get '/todos/:id/show', to: 'todos#show', as: 'todo'

  
end

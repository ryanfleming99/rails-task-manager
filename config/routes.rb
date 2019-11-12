Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # see all tasks
  get 'tasks', to: 'tasks#index'

  # add a task
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create', as: :create

  # show info about one task
  get 'tasks/:id', to: 'tasks#show', as: :show

  # edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # update a task
  patch 'tasks', to: 'tasks#update', as: :update

  # delete/destroy a task
  get 'destroy', to: 'tasks#destroy'
end

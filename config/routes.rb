Rails.application.routes.draw do
#For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  # As a user, I can list tasks

  get 'list', to: 'tasks#list', as: 'list'

  # As a user, I can add a new task
  get 'tasks/new', to: 'tasks#new', as: 'new'
  post 'tasks', to: 'tasks#create'

  # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # As a user, I can edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'

  # As a user, I can remove a task

  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete'

end




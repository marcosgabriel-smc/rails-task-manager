# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # view all instances of the model (tasks)
  get 'tasks', to: 'tasks#index', as: :tasks
  # instanciante a new model with the info provided by the user
  post 'tasks', to: 'tasks#create'
  # provide the user with a form to create a new task
  get 'tasks/new', to: 'tasks#new', as: :new
  # after choosing a task, a user can opt to edit it
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # view a specific instance the model via the ID (task)
  get 'tasks/:id', to: 'tasks#show', as: :task
  # uptade the task after the user inputs
  patch 'tasks/:id', to: 'tasks#update'
  # delete a given taks from the lists of all tasks
  delete 'tasks/:id', to: 'tasks#destroy'
end

Rails.application.routes.draw do
  # get 'tasks/index'

  # get 'tasks/show'

  # get 'tasks/new'

  # get 'tasks/create'

  # get 'tasks/edit'

  # get 'tasks/update'

  # get 'tasks/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get all your tasks.
  get "/tasks", to:"tasks#index"
    #post a new task
  post "/tasks", to:"tasks#create"
  #get a precise task
  get "/tasks/new", to:"tasks#new"

  #get the form to edit an existing task
  get "/task/:id/edit", to: "tasks#edit", as: 'task_edit'

  #get a precise task
  get "/task/:id", to:"tasks#show", as: 'task'
  #update an existing task
  patch "/task/:id", to: "tasks#update" 
  #delete an existing task
  delete "/task/:id", to: "tasks#destroy"

end

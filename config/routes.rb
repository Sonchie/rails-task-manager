Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# CREATE (2 paths/actions)
# 1st render a form
get 'tasks/new', to: 'tasks#new', as: :new_task # new_task_path
# 2nd send the form&info/Params to the controller that will make it persistent
post 'tasks', to: 'tasks#create'


# READ
# verb path, to: controller#action(method)
get "tasks", to: "tasks#index" # tasks_path
get "tasks/:id", to: "tasks#show", as: :task


# UPDATE
# The first one to GET the pre-populated HTML form of existing record

get "tasks/:id/edit", to: "tasks#edit", as: :task_edit

# The second one to PATCH this form
patch "tasks/:id", to: "tasks#update"

# DELETE
delete "tasks/:id", to: "tasks#destroy"

end


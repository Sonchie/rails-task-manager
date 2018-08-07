class TasksController < ApplicationController


# READ
# 1. read all tasks (INDEX)
def index
  @tasks = Task.all
end

# 2. read a single task - based on id
def show
  @task = Task.find(params[:id])
end

# CREATE
# 1.create a new task object using form
def new
  @task =Task.new
end

# 2.Make task persistent (instance v) and redirect
def create
  @task = Task.new(task_params)
  @task.save
  redirect_to tasks_path
end

# UPDATE
# update a single task - based on id
# save into db
def edit
  @task = Task.find(params[:id])
end

def update
  @task = Task.find(params[:id])
  @task.update(task_params)
  redirect_to tasks_path
end

# DELETE
# delete a single task - based on id
def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to tasks_path
end

private

def task_params
  params.require(:task).permit(:title, :details)
end

end

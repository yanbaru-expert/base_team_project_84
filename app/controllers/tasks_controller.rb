class TasksController < ApplicationController
    
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        Task.create(task_params)
    end

    def show
        @task = Task.find(params[:id])
    end

    def destoroy
        task = Task.find(params[:id])
        task.destoroy
    end

    private
    def task_params
        params.require(:task).permit(:title, :contents)
    end
end

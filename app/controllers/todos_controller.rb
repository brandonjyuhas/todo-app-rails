class TodosController < ApplicationController
  def index
    @todos = Current.user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Current.user.todos.create!(todo_params)
    redirect_to todos_url, notice: "Todo created successfully"
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description)
  end
end

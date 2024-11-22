class TodosController < ApplicationController
  include FunSuggestions

  def index
    @todos = Current.user.todos.active
  end

  def new
    @todo = Todo.new
    load_fun_suggestion
  end

  def create
    @todo = Current.user.todos.create!(todo_params)
    redirect_to todos_url
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description)
  end
end

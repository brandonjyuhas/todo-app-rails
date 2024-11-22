# frozen_string_literal: true

class DisappearingTodoComponent < ViewComponent::Base
  attr_reader :todo

  def initialize(todo:)
    @todo = todo
  end
end

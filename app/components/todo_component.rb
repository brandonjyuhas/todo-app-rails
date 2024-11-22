# frozen_string_literal: true

class TodoComponent < ViewComponent::Base
  attr_reader :todo

  def initialize(todo:)
    @todo = todo
  end
end

require "test_helper"

class Todos::CompletionControllerTest < ActionDispatch::IntegrationTest
  test "should post create" do
    post todo_completion_url(todos(:active_todo))
    assert_response :redirect
  end
end

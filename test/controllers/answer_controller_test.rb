require "test_helper"

class AnswerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get answer_new_url
    assert_response :success
  end

  test "should get create" do
    get answer_create_url
    assert_response :success
  end

  test "should get update" do
    get answer_update_url
    assert_response :success
  end

  test "should get destroy" do
    get answer_destroy_url
    assert_response :success
  end

  test "should get find_question" do
    get answer_find_question_url
    assert_response :success
  end
end

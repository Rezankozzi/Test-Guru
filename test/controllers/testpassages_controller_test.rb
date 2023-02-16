require "test_helper"

class TestpassagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testpassage = testpassages(:one)
  end

  test "should get index" do
    get testpassages_url
    assert_response :success
  end

  test "should get new" do
    get new_testpassage_url
    assert_response :success
  end

  test "should create testpassage" do
    assert_difference('TestPassage.count') do
      post testpassages_url, params: { testpassage: {  } }
    end

    assert_redirected_to testpassage_url(TestPassage.last)
  end

  test "should show testpassage" do
    get testpassage_url(@testpassage)
    assert_response :success
  end

  test "should get edit" do
    get edit_testpassage_url(@testpassage)
    assert_response :success
  end

  test "should update testpassage" do
    patch testpassage_url(@testpassage), params: { testpassage: {  } }
    assert_redirected_to testpassage_url(@testpassage)
  end

  test "should destroy testpassage" do
    assert_difference('TestPassage.count', -1) do
      delete testpassage_url(@testpassage)
    end

    assert_redirected_to testpassages_url
  end
end

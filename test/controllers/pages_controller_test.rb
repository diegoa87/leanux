require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get brand" do
    get :brand
    assert_response :success
  end

  test "should get keynote" do
    get :keynote
    assert_response :success
  end

  test "should get mvp" do
    get :mvp
    assert_response :success
  end

end

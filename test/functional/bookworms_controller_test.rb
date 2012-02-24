require 'test_helper'

class BookwormsControllerTest < ActionController::TestCase
  setup do
    @bookworm = bookworms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookworms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookworm" do
    assert_difference('Bookworm.count') do
      post :create, bookworm: @bookworm.attributes
    end

    assert_redirected_to bookworm_path(assigns(:bookworm))
  end

  test "should show bookworm" do
    get :show, id: @bookworm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookworm.to_param
    assert_response :success
  end

  test "should update bookworm" do
    put :update, id: @bookworm.to_param, bookworm: @bookworm.attributes
    assert_redirected_to bookworm_path(assigns(:bookworm))
  end

  test "should destroy bookworm" do
    assert_difference('Bookworm.count', -1) do
      delete :destroy, id: @bookworm.to_param
    end

    assert_redirected_to bookworms_path
  end
end

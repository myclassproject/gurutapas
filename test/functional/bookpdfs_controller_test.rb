require 'test_helper'

class BookpdfsControllerTest < ActionController::TestCase
  setup do
    @bookpdf = bookpdfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookpdfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookpdf" do
    assert_difference('Bookpdf.count') do
      post :create, bookpdf: @bookpdf.attributes
    end

    assert_redirected_to bookpdf_path(assigns(:bookpdf))
  end

  test "should show bookpdf" do
    get :show, id: @bookpdf.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookpdf.to_param
    assert_response :success
  end

  test "should update bookpdf" do
    put :update, id: @bookpdf.to_param, bookpdf: @bookpdf.attributes
    assert_redirected_to bookpdf_path(assigns(:bookpdf))
  end

  test "should destroy bookpdf" do
    assert_difference('Bookpdf.count', -1) do
      delete :destroy, id: @bookpdf.to_param
    end

    assert_redirected_to bookpdfs_path
  end
end

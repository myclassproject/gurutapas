require 'test_helper'

class BookeventsControllerTest < ActionController::TestCase
  setup do
    @bookevent = bookevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookevent" do
    assert_difference('Bookevent.count') do
      post :create, bookevent: @bookevent.attributes
    end

    assert_redirected_to bookevent_path(assigns(:bookevent))
  end

  test "should show bookevent" do
    get :show, id: @bookevent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookevent.to_param
    assert_response :success
  end

  test "should update bookevent" do
    put :update, id: @bookevent.to_param, bookevent: @bookevent.attributes
    assert_redirected_to bookevent_path(assigns(:bookevent))
  end

  test "should destroy bookevent" do
    assert_difference('Bookevent.count', -1) do
      delete :destroy, id: @bookevent.to_param
    end

    assert_redirected_to bookevents_path
  end
end

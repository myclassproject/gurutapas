require 'test_helper'

class AttachmentsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end

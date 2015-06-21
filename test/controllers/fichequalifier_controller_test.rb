require 'test_helper'

class FichequalifierControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

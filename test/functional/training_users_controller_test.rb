require 'test_helper'

class TrainingUsersControllerTest < ActionController::TestCase
  setup do
    @training_user = training_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_user" do
    assert_difference('TrainingUser.count') do
      post :create, training_user: { quote_details_id: @training_user.quote_details_id, status: @training_user.status, training_id: @training_user.training_id, user_id: @training_user.user_id }
    end

    assert_redirected_to training_user_path(assigns(:training_user))
  end

  test "should show training_user" do
    get :show, id: @training_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training_user
    assert_response :success
  end

  test "should update training_user" do
    put :update, id: @training_user, training_user: { quote_details_id: @training_user.quote_details_id, status: @training_user.status, training_id: @training_user.training_id, user_id: @training_user.user_id }
    assert_redirected_to training_user_path(assigns(:training_user))
  end

  test "should destroy training_user" do
    assert_difference('TrainingUser.count', -1) do
      delete :destroy, id: @training_user
    end

    assert_redirected_to training_users_path
  end
end

require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { academy_flag: @user.academy_flag, acronym: @user.acronym, company_id: @user.company_id, department_id: @user.department_id, email: @user.email, email_status: @user.email_status, first_name: @user.first_name, hierarchy_level: @user.hierarchy_level, last_name: @user.last_name, manager_flag: @user.manager_flag, midle_name: @user.midle_name, recruited_at: @user.recruited_at, status: @user.status, title: @user.title, trainer_flag: @user.trainer_flag, user_code: @user.user_code }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { academy_flag: @user.academy_flag, acronym: @user.acronym, company_id: @user.company_id, department_id: @user.department_id, email: @user.email, email_status: @user.email_status, first_name: @user.first_name, hierarchy_level: @user.hierarchy_level, last_name: @user.last_name, manager_flag: @user.manager_flag, midle_name: @user.midle_name, recruited_at: @user.recruited_at, status: @user.status, title: @user.title, trainer_flag: @user.trainer_flag, user_code: @user.user_code }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end

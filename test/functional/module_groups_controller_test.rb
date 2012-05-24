require 'test_helper'

class ModuleGroupsControllerTest < ActionController::TestCase
  setup do
    @module_group = module_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:module_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create module_group" do
    assert_difference('ModuleGroup.count') do
      post :create, module_group: { audience: @module_group.audience, company_id: @module_group.company_id, module_group_code: @module_group.module_group_code, module_group_description: @module_group.module_group_description, theme_id: @module_group.theme_id }
    end

    assert_redirected_to module_group_path(assigns(:module_group))
  end

  test "should show module_group" do
    get :show, id: @module_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @module_group
    assert_response :success
  end

  test "should update module_group" do
    put :update, id: @module_group, module_group: { audience: @module_group.audience, company_id: @module_group.company_id, module_group_code: @module_group.module_group_code, module_group_description: @module_group.module_group_description, theme_id: @module_group.theme_id }
    assert_redirected_to module_group_path(assigns(:module_group))
  end

  test "should destroy module_group" do
    assert_difference('ModuleGroup.count', -1) do
      delete :destroy, id: @module_group
    end

    assert_redirected_to module_groups_path
  end
end

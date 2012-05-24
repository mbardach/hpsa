require 'test_helper'

class ProgramsControllerTest < ActionController::TestCase
  setup do
    @program = programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post :create, program: { company_id: @program.company_id, program_audience: @program.program_audience, program_code: @program.program_code, program_description: @program.program_description, program_duration: @program.program_duration, program_order: @program.program_order, program_status: @program.program_status, program_title: @program.program_title }
    end

    assert_redirected_to program_path(assigns(:program))
  end

  test "should show program" do
    get :show, id: @program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program
    assert_response :success
  end

  test "should update program" do
    put :update, id: @program, program: { company_id: @program.company_id, program_audience: @program.program_audience, program_code: @program.program_code, program_description: @program.program_description, program_duration: @program.program_duration, program_order: @program.program_order, program_status: @program.program_status, program_title: @program.program_title }
    assert_redirected_to program_path(assigns(:program))
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete :destroy, id: @program
    end

    assert_redirected_to programs_path
  end
end

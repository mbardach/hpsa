require 'test_helper'

class ProgramCoursesControllerTest < ActionController::TestCase
  setup do
    @program_course = program_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_course" do
    assert_difference('ProgramCourse.count') do
      post :create, program_course: { course_id: @program_course.course_id, description: @program_course.description, duration: @program_course.duration, program_course_order: @program_course.program_course_order, program_id: @program_course.program_id, unit: @program_course.unit }
    end

    assert_redirected_to program_course_path(assigns(:program_course))
  end

  test "should show program_course" do
    get :show, id: @program_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_course
    assert_response :success
  end

  test "should update program_course" do
    put :update, id: @program_course, program_course: { course_id: @program_course.course_id, description: @program_course.description, duration: @program_course.duration, program_course_order: @program_course.program_course_order, program_id: @program_course.program_id, unit: @program_course.unit }
    assert_redirected_to program_course_path(assigns(:program_course))
  end

  test "should destroy program_course" do
    assert_difference('ProgramCourse.count', -1) do
      delete :destroy, id: @program_course
    end

    assert_redirected_to program_courses_path
  end
end

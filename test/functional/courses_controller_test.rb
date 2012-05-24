require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { company_id: @course.company_id, course_audience: @course.course_audience, course_code: @course.course_code, course_description: @course.course_description, course_introduction: @course.course_introduction, course_order: @course.course_order, course_planned_duration: @course.course_planned_duration, course_status: @course.course_status, course_title: @course.course_title, course_training_material_ref: @course.course_training_material_ref, course_type: @course.course_type, decimal: @course.decimal, subject_id: @course.subject_id }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    put :update, id: @course, course: { company_id: @course.company_id, course_audience: @course.course_audience, course_code: @course.course_code, course_description: @course.course_description, course_introduction: @course.course_introduction, course_order: @course.course_order, course_planned_duration: @course.course_planned_duration, course_status: @course.course_status, course_title: @course.course_title, course_training_material_ref: @course.course_training_material_ref, course_type: @course.course_type, decimal: @course.decimal, subject_id: @course.subject_id }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end

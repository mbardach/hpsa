require 'test_helper'

class TrainingsControllerTest < ActionController::TestCase
  setup do
    @training = trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training" do
    assert_difference('Training.count') do
      post :create, training: { description: @training.description, duration_unit: @training.duration_unit, effective_duration: @training.effective_duration, effective_participants: @training.effective_participants, expected_duration: @training.expected_duration, language: @training.language, location_idi: @training.location_idi, origin: @training.origin, planned_participants: @training.planned_participants, status: @training.status, training_end_date: @training.training_end_date, training_start_date: @training.training_start_date, user_id: @training.user_id }
    end

    assert_redirected_to training_path(assigns(:training))
  end

  test "should show training" do
    get :show, id: @training
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training
    assert_response :success
  end

  test "should update training" do
    put :update, id: @training, training: { description: @training.description, duration_unit: @training.duration_unit, effective_duration: @training.effective_duration, effective_participants: @training.effective_participants, expected_duration: @training.expected_duration, language: @training.language, location_idi: @training.location_idi, origin: @training.origin, planned_participants: @training.planned_participants, status: @training.status, training_end_date: @training.training_end_date, training_start_date: @training.training_start_date, user_id: @training.user_id }
    assert_redirected_to training_path(assigns(:training))
  end

  test "should destroy training" do
    assert_difference('Training.count', -1) do
      delete :destroy, id: @training
    end

    assert_redirected_to trainings_path
  end
end

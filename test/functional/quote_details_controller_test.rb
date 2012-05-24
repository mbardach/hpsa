require 'test_helper'

class QuoteDetailsControllerTest < ActionController::TestCase
  setup do
    @quote_detail = quote_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quote_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote_detail" do
    assert_difference('QuoteDetail.count') do
      post :create, quote_detail: { course_id: @quote_detail.course_id, quote_id: @quote_detail.quote_id, status: @quote_detail.status }
    end

    assert_redirected_to quote_detail_path(assigns(:quote_detail))
  end

  test "should show quote_detail" do
    get :show, id: @quote_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote_detail
    assert_response :success
  end

  test "should update quote_detail" do
    put :update, id: @quote_detail, quote_detail: { course_id: @quote_detail.course_id, quote_id: @quote_detail.quote_id, status: @quote_detail.status }
    assert_redirected_to quote_detail_path(assigns(:quote_detail))
  end

  test "should destroy quote_detail" do
    assert_difference('QuoteDetail.count', -1) do
      delete :destroy, id: @quote_detail
    end

    assert_redirected_to quote_details_path
  end
end

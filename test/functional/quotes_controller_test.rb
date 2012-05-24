require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, quote: { comment: @quote.comment, company_id: @quote.company_id, delay: @quote.delay, latest_by_date: @quote.latest_by_date, origin: @quote.origin, requested_date: @quote.requested_date, status: @quote.status, user_id: @quote.user_id }
    end

    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should show quote" do
    get :show, id: @quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote
    assert_response :success
  end

  test "should update quote" do
    put :update, id: @quote, quote: { comment: @quote.comment, company_id: @quote.company_id, delay: @quote.delay, latest_by_date: @quote.latest_by_date, origin: @quote.origin, requested_date: @quote.requested_date, status: @quote.status, user_id: @quote.user_id }
    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, id: @quote
    end

    assert_redirected_to quotes_path
  end
end

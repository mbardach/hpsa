require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { blocker: @company.blocker, code: @company.code, contact_principal_id: @company.contact_principal_id, currency_id: @company.currency_id, email: @company.email, language: @company.language, management_flag: @company.management_flag, memo: @company.memo, name: @company.name, phone: @company.phone, relationship: @company.relationship, sales_contact_id: @company.sales_contact_id, weekend_day_1: @company.weekend_day_1, weekend_day_2: @company.weekend_day_2 }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    put :update, id: @company, company: { blocker: @company.blocker, code: @company.code, contact_principal_id: @company.contact_principal_id, currency_id: @company.currency_id, email: @company.email, language: @company.language, management_flag: @company.management_flag, memo: @company.memo, name: @company.name, phone: @company.phone, relationship: @company.relationship, sales_contact_id: @company.sales_contact_id, weekend_day_1: @company.weekend_day_1, weekend_day_2: @company.weekend_day_2 }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end

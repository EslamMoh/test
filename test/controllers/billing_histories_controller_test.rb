require 'test_helper'

class BillingHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billing_history = billing_histories(:one)
  end

  test "should get index" do
    get billing_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_billing_history_url
    assert_response :success
  end

  test "should create billing_history" do
    assert_difference('BillingHistory.count') do
      post billing_histories_url, params: { billing_history: { amount: @billing_history.amount, token: @billing_history.token } }
    end

    assert_redirected_to billing_history_url(BillingHistory.last)
  end

  test "should show billing_history" do
    get billing_history_url(@billing_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_billing_history_url(@billing_history)
    assert_response :success
  end

  test "should update billing_history" do
    patch billing_history_url(@billing_history), params: { billing_history: { amount: @billing_history.amount, token: @billing_history.token } }
    assert_redirected_to billing_history_url(@billing_history)
  end

  test "should destroy billing_history" do
    assert_difference('BillingHistory.count', -1) do
      delete billing_history_url(@billing_history)
    end

    assert_redirected_to billing_histories_url
  end
end

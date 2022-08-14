require 'test_helper'

class CapitalAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capital_account = capital_accounts(:one)
  end

  test "should get index" do
    get capital_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_capital_account_url
    assert_response :success
  end

  test "should create capital_account" do
    assert_difference('CapitalAccount.count') do
      post capital_accounts_url, params: { capital_account: { current_balance: @capital_account.current_balance, initial_balance: @capital_account.initial_balance } }
    end

    assert_redirected_to capital_account_url(CapitalAccount.last)
  end

  test "should show capital_account" do
    get capital_account_url(@capital_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_capital_account_url(@capital_account)
    assert_response :success
  end

  test "should update capital_account" do
    patch capital_account_url(@capital_account), params: { capital_account: { current_balance: @capital_account.current_balance, initial_balance: @capital_account.initial_balance } }
    assert_redirected_to capital_account_url(@capital_account)
  end

  test "should destroy capital_account" do
    assert_difference('CapitalAccount.count', -1) do
      delete capital_account_url(@capital_account)
    end

    assert_redirected_to capital_accounts_url
  end
end

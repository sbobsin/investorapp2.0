require 'test_helper'

class CaptialContributionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @captial_contribution = captial_contributions(:one)
  end

  test "should get index" do
    get captial_contributions_url
    assert_response :success
  end

  test "should get new" do
    get new_captial_contribution_url
    assert_response :success
  end

  test "should create captial_contribution" do
    assert_difference('CaptialContribution.count') do
      post captial_contributions_url, params: { captial_contribution: { current_capital_balance: @captial_contribution.current_capital_balance, original_contribution: @captial_contribution.original_contribution, user_id: @captial_contribution.user_id } }
    end

    assert_redirected_to captial_contribution_url(CaptialContribution.last)
  end

  test "should show captial_contribution" do
    get captial_contribution_url(@captial_contribution)
    assert_response :success
  end

  test "should get edit" do
    get edit_captial_contribution_url(@captial_contribution)
    assert_response :success
  end

  test "should update captial_contribution" do
    patch captial_contribution_url(@captial_contribution), params: { captial_contribution: { current_capital_balance: @captial_contribution.current_capital_balance, original_contribution: @captial_contribution.original_contribution, user_id: @captial_contribution.user_id } }
    assert_redirected_to captial_contribution_url(@captial_contribution)
  end

  test "should destroy captial_contribution" do
    assert_difference('CaptialContribution.count', -1) do
      delete captial_contribution_url(@captial_contribution)
    end

    assert_redirected_to captial_contributions_url
  end
end

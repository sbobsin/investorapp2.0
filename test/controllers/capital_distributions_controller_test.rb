require 'test_helper'

class CapitalDistributionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capital_distribution = capital_distributions(:one)
  end

  test "should get index" do
    get capital_distributions_url
    assert_response :success
  end

  test "should get new" do
    get new_capital_distribution_url
    assert_response :success
  end

  test "should create capital_distribution" do
    assert_difference('CapitalDistribution.count') do
      post capital_distributions_url, params: { capital_distribution: { capital_account_id: @capital_distribution.capital_account_id, return_of_capital: @capital_distribution.return_of_capital } }
    end

    assert_redirected_to capital_distribution_url(CapitalDistribution.last)
  end

  test "should show capital_distribution" do
    get capital_distribution_url(@capital_distribution)
    assert_response :success
  end

  test "should get edit" do
    get edit_capital_distribution_url(@capital_distribution)
    assert_response :success
  end

  test "should update capital_distribution" do
    patch capital_distribution_url(@capital_distribution), params: { capital_distribution: { capital_account_id: @capital_distribution.capital_account_id, return_of_capital: @capital_distribution.return_of_capital } }
    assert_redirected_to capital_distribution_url(@capital_distribution)
  end

  test "should destroy capital_distribution" do
    assert_difference('CapitalDistribution.count', -1) do
      delete capital_distribution_url(@capital_distribution)
    end

    assert_redirected_to capital_distributions_url
  end
end

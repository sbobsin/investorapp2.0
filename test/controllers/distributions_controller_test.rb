require 'test_helper'

class DistributionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribution = distributions(:one)
  end

  test "should get index" do
    get distributions_url
    assert_response :success
  end

  test "should get new" do
    get new_distribution_url
    assert_response :success
  end

  test "should create distribution" do
    assert_difference('Distribution.count') do
      post distributions_url, params: { distribution: { capital_account_id: @distribution.capital_account_id, deal_id: @distribution.deal_id, distribution_date: @distribution.distribution_date, distribution_type: @distribution.distribution_type, user_id: @distribution.user_id } }
    end

    assert_redirected_to distribution_url(Distribution.last)
  end

  test "should show distribution" do
    get distribution_url(@distribution)
    assert_response :success
  end

  test "should get edit" do
    get edit_distribution_url(@distribution)
    assert_response :success
  end

  test "should update distribution" do
    patch distribution_url(@distribution), params: { distribution: { capital_account_id: @distribution.capital_account_id, deal_id: @distribution.deal_id, distribution_date: @distribution.distribution_date, distribution_type: @distribution.distribution_type, user_id: @distribution.user_id } }
    assert_redirected_to distribution_url(@distribution)
  end

  test "should destroy distribution" do
    assert_difference('Distribution.count', -1) do
      delete distribution_url(@distribution)
    end

    assert_redirected_to distributions_url
  end
end

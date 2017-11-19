require 'test_helper'

class SleepAlertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sleep_alert = sleep_alerts(:one)
  end

  test "should get index" do
    get sleep_alerts_url
    assert_response :success
  end

  test "should get new" do
    get new_sleep_alert_url
    assert_response :success
  end

  test "should create sleep_alert" do
    assert_difference('SleepAlert.count') do
      post sleep_alerts_url, params: { sleep_alert: { bed_time: @sleep_alert.bed_time, user_id: @sleep_alert.user_id, wake_time: @sleep_alert.wake_time } }
    end

    assert_redirected_to sleep_alert_url(SleepAlert.last)
  end

  test "should show sleep_alert" do
    get sleep_alert_url(@sleep_alert)
    assert_response :success
  end

  test "should get edit" do
    get edit_sleep_alert_url(@sleep_alert)
    assert_response :success
  end

  test "should update sleep_alert" do
    patch sleep_alert_url(@sleep_alert), params: { sleep_alert: { bed_time: @sleep_alert.bed_time, user_id: @sleep_alert.user_id, wake_time: @sleep_alert.wake_time } }
    assert_redirected_to sleep_alert_url(@sleep_alert)
  end

  test "should destroy sleep_alert" do
    assert_difference('SleepAlert.count', -1) do
      delete sleep_alert_url(@sleep_alert)
    end

    assert_redirected_to sleep_alerts_url
  end
end

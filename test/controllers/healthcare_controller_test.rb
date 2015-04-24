require 'test_helper'

class HealthcareControllerTest < ActionController::TestCase
  test "should get medication" do
    get :medication
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get calendar" do
    get :calendar
    assert_response :success
  end

  test "should get checklist" do
    get :checklist
    assert_response :success
  end

  test "should get reminders" do
    get :reminders
    assert_response :success
  end

end

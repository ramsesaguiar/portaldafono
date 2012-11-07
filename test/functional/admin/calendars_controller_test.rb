require 'test_helper'

class Admin::CalendarsControllerTest < ActionController::TestCase
  setup do
    @admin_calendar = admin_calendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_calendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_calendar" do
    assert_difference('Admin::Calendar.count') do
      post :create, admin_calendar: @admin_calendar.attributes
    end

    assert_redirected_to admin_calendar_path(assigns(:admin_calendar))
  end

  test "should show admin_calendar" do
    get :show, id: @admin_calendar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_calendar
    assert_response :success
  end

  test "should update admin_calendar" do
    put :update, id: @admin_calendar, admin_calendar: @admin_calendar.attributes
    assert_redirected_to admin_calendar_path(assigns(:admin_calendar))
  end

  test "should destroy admin_calendar" do
    assert_difference('Admin::Calendar.count', -1) do
      delete :destroy, id: @admin_calendar
    end

    assert_redirected_to admin_calendars_path
  end
end

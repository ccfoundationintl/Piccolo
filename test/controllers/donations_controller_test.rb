require 'test_helper'

class DonationsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  setup do
    @donation = donations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show donation" do
    get :show, id: @donation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donation
    assert_response :success
  end

end

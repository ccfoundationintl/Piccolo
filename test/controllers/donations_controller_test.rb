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

  test "should create donation" do
    assert_difference('Donation.count') do
      post :create, donation: { amount: @donation.amount, donor_email: @donation.donor_email, is_donation: @donation.is_donation, is_registration_fee: @donation.is_registration_fee }
    end

    assert_redirected_to donation_path(assigns(:donation))
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

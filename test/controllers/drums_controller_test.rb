require 'test_helper'

class DrumsControllerTest < ActionController::TestCase
  setup do
    @drum = drums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drum" do
    assert_difference('Drum.count') do
      post :create, drum: { drumCustomer: @drum.drumCustomer, drumCustomerSocial: @drum.drumCustomerSocial, drumDetails: @drum.drumDetails, drumPhoto: @drum.drumPhoto, drumPrice: @drum.drumPrice, drumSize: @drum.drumSize, drumTitle: @drum.drumTitle }
    end

    assert_redirected_to drum_path(assigns(:drum))
  end

  test "should show drum" do
    get :show, id: @drum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drum
    assert_response :success
  end

  test "should update drum" do
    patch :update, id: @drum, drum: { drumCustomer: @drum.drumCustomer, drumCustomerSocial: @drum.drumCustomerSocial, drumDetails: @drum.drumDetails, drumPhoto: @drum.drumPhoto, drumPrice: @drum.drumPrice, drumSize: @drum.drumSize, drumTitle: @drum.drumTitle }
    assert_redirected_to drum_path(assigns(:drum))
  end

  test "should destroy drum" do
    assert_difference('Drum.count', -1) do
      delete :destroy, id: @drum
    end

    assert_redirected_to drums_path
  end
end

require 'test_helper'

class PostalsControllerTest < ActionController::TestCase
  setup do
    @postal = postals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postal" do
    assert_difference('Postal.count') do
      post :create, postal: { address_id: @postal.address_id, postal_place: @postal.postal_place }
    end

    assert_redirected_to postal_path(assigns(:postal))
  end

  test "should show postal" do
    get :show, id: @postal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postal
    assert_response :success
  end

  test "should update postal" do
    put :update, id: @postal, postal: { address_id: @postal.address_id, postal_place: @postal.postal_place }
    assert_redirected_to postal_path(assigns(:postal))
  end

  test "should destroy postal" do
    assert_difference('Postal.count', -1) do
      delete :destroy, id: @postal
    end

    assert_redirected_to postals_path
  end
end

require 'test_helper'

class CampingsitesControllerTest < ActionController::TestCase
  setup do
    @campingsite = campingsites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campingsites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campingsite" do
    assert_difference('Campingsite.count') do
      post :create, campingsite: { address: @campingsite.address, features: @campingsite.features, name: @campingsite.name }
    end

    assert_redirected_to campingsite_path(assigns(:campingsite))
  end

  test "should show campingsite" do
    get :show, id: @campingsite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campingsite
    assert_response :success
  end

  test "should update campingsite" do
    patch :update, id: @campingsite, campingsite: { address: @campingsite.address, features: @campingsite.features, name: @campingsite.name }
    assert_redirected_to campingsite_path(assigns(:campingsite))
  end

  test "should destroy campingsite" do
    assert_difference('Campingsite.count', -1) do
      delete :destroy, id: @campingsite
    end

    assert_redirected_to campingsites_path
  end
end

require 'test_helper'

class OwnersControllerTest < ActionController::TestCase
  setup do
    @owner = owners(:personA)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create owner" do
    assert_difference('Owner.count') do
      post :create, owner: { address: @owner.address, name: @owner.name, phonenumber: @owner.phonenumber}
    end

    assert_redirected_to owner_path(assigns(:owner))
  end

  test "should show owner" do
    get :show, id: @owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @owner
    assert_response :success
  end

  test "should update owner" do
    patch :update, id: @owner, owner: { address: @owner.address, name: @owner.name, phonenumber: @owner.phonenumber }
    assert_redirected_to owner_path(assigns(:owner))
  end

  test "should destroy owner" do
    assert_difference('Owner.count', -1) do
      delete :destroy, id: @owner
    end

    assert_redirected_to owners_path
  end

  test "name can't be blank" do
    post :create, owner: { name: nil, address: @owner.address, phonenumber: @owner.phonenumber }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Name can't be blank"
    end
  end

  test "address can't be blank" do
    post :create, owner: { name: @owner.name, address: nil, phonenumber: @owner.phonenumber }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Address can't be blank"
    end
  end

  test "phonenumber can't be blank" do
    post :create, owner: { name: @owner.name, address: @owner.address, phonenumber: nil }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Phonenumber can't be blank"
    end
  end

  test "no update without name" do
    patch :update, id: @owner, owner: { name: nil }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Name can't be blank"
    end
  end
end

require 'test_helper'

class PitchesControllerTest < ActionController::TestCase
  setup do
    @pitch = pitches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pitches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pitch" do
    assert_difference('Pitch.count') do
      post :create, pitch: { campingsite_id: @pitch.campingsite_id, features: @pitch.features, number: @pitch.number, size: @pitch.size, used: @pitch.used }
    end

    assert_redirected_to pitch_path(assigns(:pitch))
  end

  test "rent a pitch" do
    post :rent, id: @pitch, pitch: { used: true }
    assert_redirected_to campingsite_path(assigns(:pitch))
  end

  test "should show pitch" do
    get :show, id: @pitch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pitch
    assert_response :success
  end

  test "should update pitch" do
    patch :update, id: @pitch, pitch: { campingsite_id: @pitch.campingsite_id, features: @pitch.features, number: @pitch.number, size: @pitch.size, used: @pitch.used }
    assert_redirected_to pitch_path(assigns(:pitch))
  end

  test "should destroy pitch" do
    assert_difference('Pitch.count', -1) do
      delete :destroy, id: @pitch
    end

    assert_redirected_to pitches_path
  end

  test "number can't be blank" do
    post :create, pitch: { number: nil, size: @pitch.size, features: @pitch.features, campingsite_id: @pitch.campingsite_id }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Number can't be blank"
    end
  end

  test "size can't be blank" do
    post :create, pitch: { number: @pitch.number, size: nil, features: @pitch.features, campingsite_id: @pitch.campingsite_id }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Size can't be blank"
    end
  end

  test "features can't be blank" do
    post :create, pitch: { number: @pitch.number, size: @pitch.size, features: nil, campingsite_id: @pitch.campingsite_id }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Features can't be blank"
    end
  end

  test "campingsite can't be blank" do
    post :create, pitch: { number: @pitch.number, size: @pitch.size, features: @pitch.features, campingsite_id: nil }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Campingsite can't be blank"
    end
  end

  test "no update without campingsite" do
    post :update, id: @pitch, pitch: { campingsite_id: nil }
    assert_response :ok
    assert_select "#error_explanation ul" do
      assert_select "li", "Campingsite can't be blank"
    end
  end
end

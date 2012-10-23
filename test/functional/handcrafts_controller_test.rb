require 'test_helper'

class HandcraftsControllerTest < ActionController::TestCase
  setup do
    @handcraft = handcrafts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:handcrafts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create handcraft" do
    assert_difference('Handcraft.count') do
      post :create, handcraft: { artist_id: @handcraft.artist_id, depth: @handcraft.depth, description: @handcraft.description, height: @handcraft.height, highlight: @handcraft.highlight, name: @handcraft.name, status: @handcraft.status, weight: @handcraft.weight, width: @handcraft.width }
    end

    assert_redirected_to handcraft_path(assigns(:handcraft))
  end

  test "should show handcraft" do
    get :show, id: @handcraft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @handcraft
    assert_response :success
  end

  test "should update handcraft" do
    put :update, id: @handcraft, handcraft: { artist_id: @handcraft.artist_id, depth: @handcraft.depth, description: @handcraft.description, height: @handcraft.height, highlight: @handcraft.highlight, name: @handcraft.name, status: @handcraft.status, weight: @handcraft.weight, width: @handcraft.width }
    assert_redirected_to handcraft_path(assigns(:handcraft))
  end

  test "should destroy handcraft" do
    assert_difference('Handcraft.count', -1) do
      delete :destroy, id: @handcraft
    end

    assert_redirected_to handcrafts_path
  end
end

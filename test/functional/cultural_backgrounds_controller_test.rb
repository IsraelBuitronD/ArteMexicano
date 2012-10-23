require 'test_helper'

class CulturalBackgroundsControllerTest < ActionController::TestCase
  setup do
    @cultural_background = cultural_backgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cultural_backgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cultural_background" do
    assert_difference('CulturalBackground.count') do
      post :create, cultural_background: { description: @cultural_background.description, end_date: @cultural_background.end_date, name: @cultural_background.name, start_date: @cultural_background.start_date }
    end

    assert_redirected_to cultural_background_path(assigns(:cultural_background))
  end

  test "should show cultural_background" do
    get :show, id: @cultural_background
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cultural_background
    assert_response :success
  end

  test "should update cultural_background" do
    put :update, id: @cultural_background, cultural_background: { description: @cultural_background.description, end_date: @cultural_background.end_date, name: @cultural_background.name, start_date: @cultural_background.start_date }
    assert_redirected_to cultural_background_path(assigns(:cultural_background))
  end

  test "should destroy cultural_background" do
    assert_difference('CulturalBackground.count', -1) do
      delete :destroy, id: @cultural_background
    end

    assert_redirected_to cultural_backgrounds_path
  end
end

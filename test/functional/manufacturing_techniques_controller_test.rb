require 'test_helper'

class ManufacturingTechniquesControllerTest < ActionController::TestCase
  setup do
    @manufacturing_technique = manufacturing_techniques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manufacturing_techniques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manufacturing_technique" do
    assert_difference('ManufacturingTechnique.count') do
      post :create, manufacturing_technique: { description: @manufacturing_technique.description, name: @manufacturing_technique.name }
    end

    assert_redirected_to manufacturing_technique_path(assigns(:manufacturing_technique))
  end

  test "should show manufacturing_technique" do
    get :show, id: @manufacturing_technique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manufacturing_technique
    assert_response :success
  end

  test "should update manufacturing_technique" do
    put :update, id: @manufacturing_technique, manufacturing_technique: { description: @manufacturing_technique.description, name: @manufacturing_technique.name }
    assert_redirected_to manufacturing_technique_path(assigns(:manufacturing_technique))
  end

  test "should destroy manufacturing_technique" do
    assert_difference('ManufacturingTechnique.count', -1) do
      delete :destroy, id: @manufacturing_technique
    end

    assert_redirected_to manufacturing_techniques_path
  end
end

require 'test_helper'

class EncounterTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encounter_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encounter_type" do
    assert_difference('EncounterType.count') do
      post :create, :encounter_type => { }
    end

    assert_redirected_to encounter_type_path(assigns(:encounter_type))
  end

  test "should show encounter_type" do
    get :show, :id => encounter_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => encounter_types(:one).to_param
    assert_response :success
  end

  test "should update encounter_type" do
    put :update, :id => encounter_types(:one).to_param, :encounter_type => { }
    assert_redirected_to encounter_type_path(assigns(:encounter_type))
  end

  test "should destroy encounter_type" do
    assert_difference('EncounterType.count', -1) do
      delete :destroy, :id => encounter_types(:one).to_param
    end

    assert_redirected_to encounter_types_path
  end
end

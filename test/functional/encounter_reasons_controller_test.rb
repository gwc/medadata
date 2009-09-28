require 'test_helper'

class EncounterReasonsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encounter_reasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encounter_reason" do
    assert_difference('EncounterReason.count') do
      post :create, :encounter_reason => { }
    end

    assert_redirected_to encounter_reason_path(assigns(:encounter_reason))
  end

  test "should show encounter_reason" do
    get :show, :id => encounter_reasons(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => encounter_reasons(:one).to_param
    assert_response :success
  end

  test "should update encounter_reason" do
    put :update, :id => encounter_reasons(:one).to_param, :encounter_reason => { }
    assert_redirected_to encounter_reason_path(assigns(:encounter_reason))
  end

  test "should destroy encounter_reason" do
    assert_difference('EncounterReason.count', -1) do
      delete :destroy, :id => encounter_reasons(:one).to_param
    end

    assert_redirected_to encounter_reasons_path
  end
end

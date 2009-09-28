require 'test_helper'

class ProviderRolesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provider_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provider_role" do
    assert_difference('ProviderRole.count') do
      post :create, :provider_role => { }
    end

    assert_redirected_to provider_role_path(assigns(:provider_role))
  end

  test "should show provider_role" do
    get :show, :id => provider_roles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => provider_roles(:one).to_param
    assert_response :success
  end

  test "should update provider_role" do
    put :update, :id => provider_roles(:one).to_param, :provider_role => { }
    assert_redirected_to provider_role_path(assigns(:provider_role))
  end

  test "should destroy provider_role" do
    assert_difference('ProviderRole.count', -1) do
      delete :destroy, :id => provider_roles(:one).to_param
    end

    assert_redirected_to provider_roles_path
  end
end

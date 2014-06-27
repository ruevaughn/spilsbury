require 'test_helper'

class ObituariesControllerTest < ActionController::TestCase
  setup do
    @obituary = obituaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obituaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obituary" do
    assert_difference('Obituary.count') do
      post :create, obituary: { born_date: @obituary.born_date, death_date: @obituary.death_date, first_name: @obituary.first_name, last_name: @obituary.last_name, middle_name: @obituary.middle_name }
    end

    assert_redirected_to obituary_path(assigns(:obituary))
  end

  test "should show obituary" do
    get :show, id: @obituary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obituary
    assert_response :success
  end

  test "should update obituary" do
    patch :update, id: @obituary, obituary: { born_date: @obituary.born_date, death_date: @obituary.death_date, first_name: @obituary.first_name, last_name: @obituary.last_name, middle_name: @obituary.middle_name }
    assert_redirected_to obituary_path(assigns(:obituary))
  end

  test "should destroy obituary" do
    assert_difference('Obituary.count', -1) do
      delete :destroy, id: @obituary
    end

    assert_redirected_to obituaries_path
  end
end

require 'test_helper'

class PublishersControllerTest < ActionController::TestCase
  setup do
    @publisher = publishers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publishers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publisher" do
    assert_difference('Publisher.count') do
      post :create, publisher: @publisher.attributes
    end

    assert_redirected_to publisher_path(assigns(:publisher))
  end

  test "should show publisher" do
    get :show, id: @publisher.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publisher.to_param
    assert_response :success
  end

  test "should update publisher" do
    put :update, id: @publisher.to_param, publisher: @publisher.attributes
    assert_redirected_to publisher_path(assigns(:publisher))
  end

  test "should destroy publisher" do
    assert_difference('Publisher.count', -1) do
      delete :destroy, id: @publisher.to_param
    end

    assert_redirected_to publishers_path
  end
end

require 'test_helper'

class Beta::PostsControllerTest < ActionController::TestCase
  setup do
    @beta_post = beta_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beta_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beta_post" do
    assert_difference('Beta::Post.count') do
      post :create, :beta_post => @beta_post.attributes
    end

    assert_redirected_to beta_post_path(assigns(:beta_post))
  end

  test "should show beta_post" do
    get :show, :id => @beta_post.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @beta_post.to_param
    assert_response :success
  end

  test "should update beta_post" do
    put :update, :id => @beta_post.to_param, :beta_post => @beta_post.attributes
    assert_redirected_to beta_post_path(assigns(:beta_post))
  end

  test "should destroy beta_post" do
    assert_difference('Beta::Post.count', -1) do
      delete :destroy, :id => @beta_post.to_param
    end

    assert_redirected_to beta_posts_path
  end
end

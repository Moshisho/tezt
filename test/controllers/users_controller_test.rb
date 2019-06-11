require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { active: @user.active, chat_username: @user.chat_username, email: @user.email, name: @user.name, notify_in_chat: @user.notify_in_chat, notify_in_mail: @user.notify_in_mail, notify_in_sms: @user.notify_in_sms, team_id: @user.team_id }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { active: @user.active, chat_username: @user.chat_username, email: @user.email, name: @user.name, notify_in_chat: @user.notify_in_chat, notify_in_mail: @user.notify_in_mail, notify_in_sms: @user.notify_in_sms, team_id: @user.team_id }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end

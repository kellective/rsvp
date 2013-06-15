require 'test_helper'

class EventRsvpsControllerTest < ActionController::TestCase
  setup do
    @event_rsvp = event_rsvps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_rsvps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_rsvp" do
    assert_difference('EventRsvp.count') do
      post :create, :event_rsvp => { :email => @event_rsvp.email, :name => @event_rsvp.name, :probability => @event_rsvp.probability }
    end

    assert_redirected_to event_rsvp_path(assigns(:event_rsvp))
  end

  test "should show event_rsvp" do
    get :show, :id => @event_rsvp
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @event_rsvp
    assert_response :success
  end

  test "should update event_rsvp" do
    put :update, :id => @event_rsvp, :event_rsvp => { :email => @event_rsvp.email, :name => @event_rsvp.name, :probability => @event_rsvp.probability }
    assert_redirected_to event_rsvp_path(assigns(:event_rsvp))
  end

  test "should destroy event_rsvp" do
    assert_difference('EventRsvp.count', -1) do
      delete :destroy, :id => @event_rsvp
    end

    assert_redirected_to event_rsvps_path
  end
end

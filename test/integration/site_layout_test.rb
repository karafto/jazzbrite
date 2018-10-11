require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, text: "Jazz-Brite"
    assert_select "a[href=?]", events_path, text: "Attend Events"
    assert_select "a[href=?]", events_path, text: "Browse Events"
    assert_select "a[href=?]", events_path, text: "Start exploring"
    assert_select "a[href=?]", new_event_path, text: "Create Events"
    assert_select "a[href=?]", new_event_path, text: "Create Event"
    assert_select "a[href=?]", new_user_registration_path, text: "Sign Up"
    assert_select "a[href=?]", new_user_session_path, text: "Log In"
    get events_path
  end
end

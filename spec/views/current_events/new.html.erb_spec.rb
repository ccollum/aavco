require 'spec_helper'

describe "current_events/new.html.erb" do
  before(:each) do
    assign(:current_event, stub_model(CurrentEvent,
      :name => "MyString",
      :link => "MyString",
      :dates => "MyString",
      :location => "MyString",
      :information => "MyString"
    ).as_new_record)
  end

  it "renders new current_event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => current_events_path, :method => "post" do
      assert_select "input#current_event_name", :name => "current_event[name]"
      assert_select "input#current_event_link", :name => "current_event[link]"
      assert_select "input#current_event_dates", :name => "current_event[dates]"
      assert_select "input#current_event_location", :name => "current_event[location]"
      assert_select "input#current_event_information", :name => "current_event[information]"
    end
  end
end

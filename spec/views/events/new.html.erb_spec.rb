require 'spec_helper'

describe "events/new.html.erb" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :name_link => "MyString",
      :dates => "MyString",
      :location => "MyString",
      :info => "MyString"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "input#event_name_link", :name => "event[name_link]"
      assert_select "input#event_dates", :name => "event[dates]"
      assert_select "input#event_location", :name => "event[location]"
      assert_select "input#event_info", :name => "event[info]"
    end
  end
end

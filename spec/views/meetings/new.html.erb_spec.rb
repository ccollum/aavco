require 'spec_helper'

describe "meetings/new.html.erb" do
  before(:each) do
    assign(:meeting, stub_model(Meeting,
      :city => "MyString",
      :days => "MyString",
      :time => "MyString",
      :title => "MyString",
      :code => "MyString",
      :vc_id => "MyString",
      :gso_id => "MyString",
      :location_id => 1,
      :active => "MyString",
      :day_number => 1
    ).as_new_record)
  end

  it "renders new meeting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meetings_path, :method => "post" do
      assert_select "input#meeting_city", :name => "meeting[city]"
      assert_select "input#meeting_days", :name => "meeting[days]"
      assert_select "input#meeting_time", :name => "meeting[time]"
      assert_select "input#meeting_title", :name => "meeting[title]"
      assert_select "input#meeting_code", :name => "meeting[code]"
      assert_select "input#meeting_vc_id", :name => "meeting[vc_id]"
      assert_select "input#meeting_gso_id", :name => "meeting[gso_id]"
      assert_select "input#meeting_location_id", :name => "meeting[location_id]"
      assert_select "input#meeting_active", :name => "meeting[active]"
      assert_select "input#meeting_day_number", :name => "meeting[day_number]"
    end
  end
end

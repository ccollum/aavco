require 'spec_helper'

describe "current_events/index.html.erb" do
  before(:each) do
    assign(:current_events, [
      stub_model(CurrentEvent,
        :name => "Name",
        :link => "Link",
        :dates => "Dates",
        :location => "Location",
        :information => "Information"
      ),
      stub_model(CurrentEvent,
        :name => "Name",
        :link => "Link",
        :dates => "Dates",
        :location => "Location",
        :information => "Information"
      )
    ])
  end

  it "renders a list of current_events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dates".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Information".to_s, :count => 2
  end
end

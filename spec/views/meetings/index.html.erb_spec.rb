require 'spec_helper'

describe "meetings/index.html.erb" do
  before(:each) do
    assign(:meetings, [
      stub_model(Meeting,
        :city => "City",
        :days => "Days",
        :time => "Time",
        :title => "Title",
        :code => "Code",
        :vc_id => "Vc",
        :gso_id => "Gso",
        :location_id => 1,
        :active => "Active",
        :day_number => 1
      ),
      stub_model(Meeting,
        :city => "City",
        :days => "Days",
        :time => "Time",
        :title => "Title",
        :code => "Code",
        :vc_id => "Vc",
        :gso_id => "Gso",
        :location_id => 1,
        :active => "Active",
        :day_number => 1
      )
    ])
  end

  it "renders a list of meetings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Days".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gso".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Active".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

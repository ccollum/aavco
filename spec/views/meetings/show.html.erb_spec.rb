require 'spec_helper'

describe "meetings/show.html.erb" do
  before(:each) do
    @meeting = assign(:meeting, stub_model(Meeting,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Days/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vc/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gso/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Active/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

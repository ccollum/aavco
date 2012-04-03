require 'spec_helper'

describe "current_events/show.html.erb" do
  before(:each) do
    @current_event = assign(:current_event, stub_model(CurrentEvent,
      :name => "Name",
      :link => "Link",
      :dates => "Dates",
      :location => "Location",
      :information => "Information"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dates/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Information/)
  end
end

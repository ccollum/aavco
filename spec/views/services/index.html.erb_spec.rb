require 'spec_helper'

describe "services/index.html.erb" do
  before(:each) do
    assign(:services, [
      stub_model(Service,
        :title => "Title",
        :page_text => "MyText",
        :subtitle => "Subtitle",
        :service_meetings => "MyText"
      ),
      stub_model(Service,
        :title => "Title",
        :page_text => "MyText",
        :subtitle => "Subtitle",
        :service_meetings => "MyText"
      )
    ])
  end

  it "renders a list of services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subtitle".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

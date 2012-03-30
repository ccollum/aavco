require 'spec_helper'

describe "cities/index.html.erb" do
  before(:each) do
    assign(:cities, [
      stub_model(City,
        :city => "City",
        :city_code => "City Code"
      ),
      stub_model(City,
        :city => "City",
        :city_code => "City Code"
      )
    ])
  end

  it "renders a list of cities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City Code".to_s, :count => 2
  end
end

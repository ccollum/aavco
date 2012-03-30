require 'spec_helper'

describe "codes/index.html.erb" do
  before(:each) do
    assign(:codes, [
      stub_model(Code,
        :code => "Code",
        :description => "Description"
      ),
      stub_model(Code,
        :code => "Code",
        :description => "Description"
      )
    ])
  end

  it "renders a list of codes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

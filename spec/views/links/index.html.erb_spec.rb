require 'spec_helper'

describe "links/index.html.erb" do
  before(:each) do
    assign(:links, [
      stub_model(Link,
        :title => "Title",
        :page_text => "MyText"
      ),
      stub_model(Link,
        :title => "Title",
        :page_text => "MyText"
      )
    ])
  end

  it "renders a list of links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

require 'spec_helper'

describe "forms/index.html.erb" do
  before(:each) do
    assign(:forms, [
      stub_model(Form,
        :title => "Title",
        :page_text => "MyText"
      ),
      stub_model(Form,
        :title => "Title",
        :page_text => "MyText"
      )
    ])
  end

  it "renders a list of forms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

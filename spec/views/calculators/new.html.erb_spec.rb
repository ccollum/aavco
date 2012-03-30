require 'spec_helper'

describe "calculators/new.html.erb" do
  before(:each) do
    assign(:calculator, stub_model(Calculator,
      :title => "MyString",
      :page_text => "MyText"
    ).as_new_record)
  end

  it "renders new calculator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => calculators_path, :method => "post" do
      assert_select "input#calculator_title", :name => "calculator[title]"
      assert_select "textarea#calculator_page_text", :name => "calculator[page_text]"
    end
  end
end

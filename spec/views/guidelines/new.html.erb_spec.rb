require 'spec_helper'

describe "guidelines/new.html.erb" do
  before(:each) do
    assign(:guideline, stub_model(Guideline,
      :title => "MyString",
      :page_text => "MyText"
    ).as_new_record)
  end

  it "renders new guideline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => guidelines_path, :method => "post" do
      assert_select "input#guideline_title", :name => "guideline[title]"
      assert_select "textarea#guideline_page_text", :name => "guideline[page_text]"
    end
  end
end

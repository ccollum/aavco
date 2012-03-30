require 'spec_helper'

describe "guidelines/edit.html.erb" do
  before(:each) do
    @guideline = assign(:guideline, stub_model(Guideline,
      :title => "MyString",
      :page_text => "MyText"
    ))
  end

  it "renders the edit guideline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => guidelines_path(@guideline), :method => "post" do
      assert_select "input#guideline_title", :name => "guideline[title]"
      assert_select "textarea#guideline_page_text", :name => "guideline[page_text]"
    end
  end
end

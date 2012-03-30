require 'spec_helper'

describe "forms/edit.html.erb" do
  before(:each) do
    @form = assign(:form, stub_model(Form,
      :title => "MyString",
      :page_text => "MyText"
    ))
  end

  it "renders the edit form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forms_path(@form), :method => "post" do
      assert_select "input#form_title", :name => "form[title]"
      assert_select "textarea#form_page_text", :name => "form[page_text]"
    end
  end
end

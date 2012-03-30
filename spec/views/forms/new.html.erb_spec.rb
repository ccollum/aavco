require 'spec_helper'

describe "forms/new.html.erb" do
  before(:each) do
    assign(:form, stub_model(Form,
      :title => "MyString",
      :page_text => "MyText"
    ).as_new_record)
  end

  it "renders new form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forms_path, :method => "post" do
      assert_select "input#form_title", :name => "form[title]"
      assert_select "textarea#form_page_text", :name => "form[page_text]"
    end
  end
end

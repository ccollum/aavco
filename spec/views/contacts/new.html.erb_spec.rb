require 'spec_helper'

describe "contacts/new.html.erb" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :title => "MyString",
      :page_text => "MyText"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_title", :name => "contact[title]"
      assert_select "textarea#contact_page_text", :name => "contact[page_text]"
    end
  end
end

require 'spec_helper'

describe "links/edit.html.erb" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :title => "MyString",
      :page_text => "MyText"
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path(@link), :method => "post" do
      assert_select "input#link_title", :name => "link[title]"
      assert_select "textarea#link_page_text", :name => "link[page_text]"
    end
  end
end

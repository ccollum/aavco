require 'spec_helper'

describe "about_aas/new.html.erb" do
  before(:each) do
    assign(:about_aa, stub_model(AboutAa,
      :title => "MyString",
      :page_text => "MyText"
    ).as_new_record)
  end

  it "renders new about_aa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => about_aas_path, :method => "post" do
      assert_select "input#about_aa_title", :name => "about_aa[title]"
      assert_select "textarea#about_aa_page_text", :name => "about_aa[page_text]"
    end
  end
end

require 'spec_helper'

describe "about_aas/show.html.erb" do
  before(:each) do
    @about_aa = assign(:about_aa, stub_model(AboutAa,
      :title => "Title",
      :page_text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end

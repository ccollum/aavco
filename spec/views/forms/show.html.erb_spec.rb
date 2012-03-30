require 'spec_helper'

describe "forms/show.html.erb" do
  before(:each) do
    @form = assign(:form, stub_model(Form,
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

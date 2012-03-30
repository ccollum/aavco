require 'spec_helper'

describe "calculators/show.html.erb" do
  before(:each) do
    @calculator = assign(:calculator, stub_model(Calculator,
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

require 'spec_helper'

describe "codes/edit.html.erb" do
  before(:each) do
    @code = assign(:code, stub_model(Code,
      :code => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => codes_path(@code), :method => "post" do
      assert_select "input#code_code", :name => "code[code]"
      assert_select "input#code_description", :name => "code[description]"
    end
  end
end

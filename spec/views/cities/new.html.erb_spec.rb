require 'spec_helper'

describe "cities/new.html.erb" do
  before(:each) do
    assign(:city, stub_model(City,
      :city => "MyString",
      :city_code => "MyString"
    ).as_new_record)
  end

  it "renders new city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cities_path, :method => "post" do
      assert_select "input#city_city", :name => "city[city]"
      assert_select "input#city_city_code", :name => "city[city_code]"
    end
  end
end

require 'spec_helper'

describe "services/new.html.erb" do
  before(:each) do
    assign(:service, stub_model(Service,
      :title => "MyString",
      :page_text => "MyText",
      :subtitle => "MyString",
      :service_meetings => "MyText"
    ).as_new_record)
  end

  it "renders new service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path, :method => "post" do
      assert_select "input#service_title", :name => "service[title]"
      assert_select "textarea#service_page_text", :name => "service[page_text]"
      assert_select "input#service_subtitle", :name => "service[subtitle]"
      assert_select "textarea#service_service_meetings", :name => "service[service_meetings]"
    end
  end
end

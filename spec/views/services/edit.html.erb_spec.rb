require 'spec_helper'

describe "services/edit.html.erb" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :title => "MyString",
      :page_text => "MyText",
      :subtitle => "MyString",
      :service_meetings => "MyText"
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path(@service), :method => "post" do
      assert_select "input#service_title", :name => "service[title]"
      assert_select "textarea#service_page_text", :name => "service[page_text]"
      assert_select "input#service_subtitle", :name => "service[subtitle]"
      assert_select "textarea#service_service_meetings", :name => "service[service_meetings]"
    end
  end
end

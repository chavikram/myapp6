require 'spec_helper'

describe "schools/index" do
  before(:each) do
    assign(:schools, [
      stub_model(School,
        :name => "Name",
        :name_in_hindi => "Name In Hindi",
        :brief => "Brief",
        :established_in => 1,
        :fee_id => "",
        :contact_no => ""
      ),
      stub_model(School,
        :name => "Name",
        :name_in_hindi => "Name In Hindi",
        :brief => "Brief",
        :established_in => 1,
        :fee_id => "",
        :contact_no => ""
      )
    ])
  end

  it "renders a list of schools" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name In Hindi".to_s, :count => 2
    assert_select "tr>td", :text => "Brief".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

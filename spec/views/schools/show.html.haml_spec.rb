require 'spec_helper'

describe "schools/show" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "Name",
      :name_in_hindi => "Name In Hindi",
      :brief => "Brief",
      :established_in => 1,
      :fee_id => "",
      :contact_no => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Name In Hindi/)
    rendered.should match(/Brief/)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end

require 'spec_helper'

describe "fees/show" do
  before(:each) do
    @fee = assign(:fee, stub_model(Fee,
      :adm_fee => 1,
      :annual_fee => 2,
      :mis_fee => 3,
      :year => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end

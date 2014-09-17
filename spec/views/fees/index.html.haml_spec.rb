require 'spec_helper'

describe "fees/index" do
  before(:each) do
    assign(:fees, [
      stub_model(Fee,
        :adm_fee => 1,
        :annual_fee => 2,
        :mis_fee => 3,
        :year => 4
      ),
      stub_model(Fee,
        :adm_fee => 1,
        :annual_fee => 2,
        :mis_fee => 3,
        :year => 4
      )
    ])
  end

  it "renders a list of fees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end

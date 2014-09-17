require 'spec_helper'

describe "fees/new" do
  before(:each) do
    assign(:fee, stub_model(Fee,
      :adm_fee => 1,
      :annual_fee => 1,
      :mis_fee => 1,
      :year => 1
    ).as_new_record)
  end

  it "renders new fee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fees_path, "post" do
      assert_select "input#fee_adm_fee[name=?]", "fee[adm_fee]"
      assert_select "input#fee_annual_fee[name=?]", "fee[annual_fee]"
      assert_select "input#fee_mis_fee[name=?]", "fee[mis_fee]"
      assert_select "input#fee_year[name=?]", "fee[year]"
    end
  end
end

require 'spec_helper'

describe "addresses/edit" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :plot_no => "MyString",
      :street => "MyString",
      :colony => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :pin_code => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", address_path(@address), "post" do
      assert_select "input#address_plot_no[name=?]", "address[plot_no]"
      assert_select "input#address_street[name=?]", "address[street]"
      assert_select "input#address_colony[name=?]", "address[colony]"
      assert_select "input#address_city[name=?]", "address[city]"
      assert_select "input#address_state[name=?]", "address[state]"
      assert_select "input#address_country[name=?]", "address[country]"
      assert_select "input#address_pin_code[name=?]", "address[pin_code]"
    end
  end
end

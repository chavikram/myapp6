require 'spec_helper'

describe "addresses/show" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :plot_no => "Plot No",
      :street => "Street",
      :colony => "Colony",
      :city => "City",
      :state => "State",
      :country => "Country",
      :pin_code => "Pin Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Plot No/)
    rendered.should match(/Street/)
    rendered.should match(/Colony/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Country/)
    rendered.should match(/Pin Code/)
  end
end

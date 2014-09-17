require 'spec_helper'

describe "schools/edit" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "MyString",
      :name_in_hindi => "MyString",
      :brief => "MyString",
      :established_in => 1,
      :fee_id => "",
      :contact_no => ""
    ))
  end

  it "renders the edit school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", school_path(@school), "post" do
      assert_select "input#school_name[name=?]", "school[name]"
      assert_select "input#school_name_in_hindi[name=?]", "school[name_in_hindi]"
      assert_select "input#school_brief[name=?]", "school[brief]"
      assert_select "input#school_established_in[name=?]", "school[established_in]"
      assert_select "input#school_fee_id[name=?]", "school[fee_id]"
      assert_select "input#school_contact_no[name=?]", "school[contact_no]"
    end
  end
end

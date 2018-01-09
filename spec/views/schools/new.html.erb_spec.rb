require 'rails_helper'

RSpec.describe "schools/new", type: :view do
  before(:each) do
    assign(:school, School.new(
      :name => "MyString",
      :description => "MyString",
      :address => "MyString",
      :contacts => "MyString"
    ))
  end

  it "renders new school form" do
    render

    assert_select "form[action=?][method=?]", schools_path, "post" do

      assert_select "input[name=?]", "school[name]"

      assert_select "input[name=?]", "school[description]"

      assert_select "input[name=?]", "school[address]"

      assert_select "input[name=?]", "school[contacts]"
    end
  end
end

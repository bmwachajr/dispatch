require 'rails_helper'

RSpec.describe "schools/index", type: :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :name => "Name",
        :description => "Description",
        :address => "Address",
        :contacts => "Contacts"
      ),
      School.create!(
        :name => "Name",
        :description => "Description",
        :address => "Address",
        :contacts => "Contacts"
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Contacts".to_s, :count => 2
  end
end

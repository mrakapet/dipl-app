require 'rails_helper'

RSpec.describe "faculties/index", :type => :view do
  before(:each) do
    assign(:faculties, [
      Faculty.create!(
        :name => "Name",
        :string => "String"
      ),
      Faculty.create!(
        :name => "Name",
        :string => "String"
      )
    ])
  end

  it "renders a list of faculties" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
  end
end

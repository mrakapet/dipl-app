require 'rails_helper'

RSpec.describe "faculties/index", :type => :view do
  before(:each) do
    assign(:faculties, [
      Faculty.create!(
        :name => "Name"
      ),
      Faculty.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of faculties" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

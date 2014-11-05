require 'rails_helper'

RSpec.describe "faculties/edit", :type => :view do
  before(:each) do
    @faculty = assign(:faculty, Faculty.create!(
      :name => "MyString",
      :string => "MyString"
    ))
  end

  it "renders the edit faculty form" do
    render

    assert_select "form[action=?][method=?]", faculty_path(@faculty), "post" do

      assert_select "input#faculty_name[name=?]", "faculty[name]"

      assert_select "input#faculty_string[name=?]", "faculty[string]"
    end
  end
end

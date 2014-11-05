require 'rails_helper'

RSpec.describe "faculties/show", :type => :view do
  before(:each) do
    @faculty = assign(:faculty, Faculty.create!(
      :name => "Name",
      :string => "String"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/String/)
  end
end

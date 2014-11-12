require 'rails_helper'

RSpec.describe "faculties/show", :type => :view do
  before(:each) do
    @faculty = assign(:faculty, Faculty.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

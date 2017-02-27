require 'rails_helper'

RSpec.describe "Rendering home template", type: :view do
  before(:each) do
    render :template => "static_pages/home.html.erb"
  end

  it "displays File to Upload" do
    expect(rendered).to match /File to Upload/
  end

  it "displays Import Data" do
    expect(rendered).to match /Import Data/
  end
end

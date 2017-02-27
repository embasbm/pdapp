require 'rails_helper'

RSpec.describe "Rendering home template", type: :view do
  it "displays the form to attach the file" do
    render :template => "static_pages/home.html.erb"
    expect(rendered).to match /File to Upload/
  end
end

require 'rails_helper'

RSpec.describe "guides/edit", type: :view do
  before(:each) do
    @guide = assign(:guide, Guide.create!(
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit guide form" do
    render

    assert_select "form[action=?][method=?]", guide_path(@guide), "post" do

      assert_select "input#guide_title[name=?]", "guide[title]"

      assert_select "input#guide_content[name=?]", "guide[content]"
    end
  end
end

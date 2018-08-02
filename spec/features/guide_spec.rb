require 'rails_helper'

describe 'Guide feature' do
  it 'can create a guide from the form' do
    visit new_guide_path

    fill_in 'guide[title]', with: 'Some Title'
    fill_in 'guide[content]', with: 'Some Content'

    click_on "Create Guide"
    expect(page).to have_content('Some Title')
  end
end

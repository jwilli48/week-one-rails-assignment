require 'rails_helper'

describe 'Static pages' do
  it 'has a homepage' do
    visit root_path
    expect(page.status_code).to eq(200)
  end

  it 'has a page title of: Week One Rails Application' do
    visit root_path
    expect(page.title).to eq('Week One Rails Application')
  end

  it 'has a h1 tag of: Hi from Rails on the homepage' do
    visit root_path
    expect(page).to have_selector('h1', text: 'Hi from Rails')
  end

  it 'has a paragraph tag with a cutesy coding quote' do
    visit root_path
    expect(page).to have_selector('p', text: 'If builders built buildings the way programmers wrote programs, then the first woodpecker that came along wound destroy civilization. - Gerald Weinberg')
  end
end

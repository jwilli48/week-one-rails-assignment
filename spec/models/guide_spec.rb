require 'rails_helper'

describe Guide do
  it 'can be created' do
    g = Guide.create(title: 'Some Title', content: 'Some content')
    expect(g).to be_valid
  end
end

require 'rails_helper'

RSpec.describe 'View engineers' do
  scenario 'See engineers oncall hours' do
    visit '/engineers'
    expect(page).to have_content 'Muhammad 11'
    expect(page).to have_content 'Ali 35'
  end
end

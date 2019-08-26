require 'rails_helper'

describe "the go to products path" do
  it "displays all products" do
    visit root_path
    click_link 'View all products!'

    expect(page).to have_content 'Products for Sale:'
    expect(page).to have_content 'The most reviewed product:'
    expect(page).to have_content 'The three most recently added products:'
    expect(page).to have_content 'All products:'
  end
end

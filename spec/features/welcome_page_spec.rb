require 'rails_helper'

describe "the welcome path" do
  it "shows the home page" do
    visit root_path
    expect(page).to have_content "Welcome to Mario's Fabulous Emporium"
    expect(page).to have_content "An eclectic assortment of unique goods from all over the world."
    expect(page).to have_content "View all products!"

  end
end

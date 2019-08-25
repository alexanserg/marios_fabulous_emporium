require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Giant Candy Bar'
    fill_in 'Cost', :with => '2000'
    fill_in 'Country of origin', :with => 'Americans'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Giant Candy Bar'
  end

  it "gives an error when paramaters are not properly entered" do
    visit products_path
    click_link 'Create new product'
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Cost can't be blank"
    expect(page).to have_content "Cost is not a number"
    expect(page).to have_content "Country of origin can't be blank"
  end
end

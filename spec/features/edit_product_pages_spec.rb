require 'rails_helper'

describe "the update a product process" do
  it "Updates product info" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Enormous Candy Bar'
    fill_in 'Cost', :with => '2000'
    fill_in 'Country of origin', :with => 'belgium'
    click_on 'Create Product'
    click_link 'Create new product'
    fill_in 'Name', :with => 'large Candy Bar'
    fill_in 'Cost', :with => '2000'
    fill_in 'Country of origin', :with => 'belgium'
    click_on 'Create Product'
    click_link 'Create new product'
    fill_in 'Name', :with => 'medium Candy Bar'
    fill_in 'Cost', :with => '2000'
    fill_in 'Country of origin', :with => 'belgium'
    click_on 'Create Product'
    click_link 'Create new product'
    fill_in 'Name', :with => 'small Candy Bar'
    fill_in 'Cost', :with => '2000'
    fill_in 'Country of origin', :with => 'belgium'
    click_on 'Create Product'
    click_on 'Enormous Candy Bar'
    click_on 'Edit'
    fill_in 'Name', :with => 'Enormous Candy Bar'
    fill_in 'Cost', :with => '3000'
    fill_in 'Country of origin', :with => 'belgium'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated!'
  end
end

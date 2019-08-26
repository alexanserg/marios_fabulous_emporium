require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
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
    click_on 'Add a review'
    fill_in 'Author', :with => 'Mike Tyson'
    fill_in 'Content body', :with => 'Thith ith the betht candy bar in the entire univerthe. I would recommend it to anyone!'
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
    expect(page).to have_content 'Mike Tyson'
  end

end

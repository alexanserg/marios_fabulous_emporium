require 'rails_helper'

# must create 4 products to avoid ambiguity for link due to layout of products index

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

  it "gives an error when paramaters are not properly entered" do
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
    click_on 'Create Review'
    expect(page).to have_content 'Please fix these errors:'
    expect(page).to have_content "Author can't be blank"
    expect(page).to have_content 'Content body is too short (minimum is 50 characters)'
    expect(page).to have_content 'Rating is not included in the list'
    expect(page).to have_content 'Rating is not a number'
  end

end

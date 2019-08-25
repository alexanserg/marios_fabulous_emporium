require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should have_db_column(:name) }
  it { should have_db_column(:cost) }
  it { should have_db_column(:country_of_origin) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:cost) }
  it { should validate_numericality_of(:cost)}
  it { should validate_presence_of(:country_of_origin) }

end

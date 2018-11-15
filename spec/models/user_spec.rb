require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
    expect(FactoryGirl.build(:user, :notvalid)).not_to be_valid
  end
end

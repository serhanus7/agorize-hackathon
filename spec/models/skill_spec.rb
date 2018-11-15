require 'rails_helper'

RSpec.describe Skill, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:skill)).to be_valid
    expect(FactoryGirl.build(:skill, :with_validation_error)).not_to be_valid
  end
end

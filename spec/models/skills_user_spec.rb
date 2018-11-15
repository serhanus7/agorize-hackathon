require 'rails_helper'

RSpec.describe Skill, type: :model do
  it "has a valid factory" do
    skill_user = FactoryGirl.create(:skills_user)
    expect(skill_user).to be_valid
    expect(Skill.find(skill_user.skill_id).users).to include(User.find(skill_user.user_id))
  end
end
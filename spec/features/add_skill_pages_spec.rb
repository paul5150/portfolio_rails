require 'rails_helper'

describe "the add a skill process" do
  it "add a new skill" do
    visit skills_path
    click_on 'Add a new skill'
    fill_in 'Name', :with => 'Ruby'
    fill_in 'Description', :with => 'A programming language'
    click_on 'Create Skill'
    expect(page).to have_content 'Skills'
  end

  it "gives an error when field is blank" do
    visit new_skill_path
    click_on 'Create Skill'
    expect(page).to have_content 'errors'
  end
end

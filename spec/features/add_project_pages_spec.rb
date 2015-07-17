require 'rails_helper'

describe "the add a project process" do
  it "adds a project to a skill" do
    skill = Skill.create(:name => 'Ruby', :description => 'A programming language')
    project = Project.create(:app => 'Puzzle', :info => 'a game')
    visit skill_path(skill.id)
    click_on 'Add a project'
    fill_in 'App', :with => 'Puzzle'
    fill_in 'Info', :with => 'a game'
    click_on 'Create Project'
    expect(page).to have_content 'Boom!'
  end

  it "gives an error when field is blank" do
    skill = Skill.create(:name => 'Ruby', :description => 'A programming language')
    project = Project.create(:app => 'Puzzle', :info => 'a game')
    visit skill_path(skill.id)
    click_on 'Add a project'
    fill_in 'App', :with => 'Puzzle'
    fill_in 'Info', :with => ' '
    click_on 'Create Project'
    expect(page).to have_content 'errors'
  end
end

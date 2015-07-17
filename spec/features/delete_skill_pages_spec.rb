require 'rails_helper'

describe "the delete a skill process" do
  it "deletes a skill" do
    skill = Skill.create(:name => 'Linux', :description => 'language')
    visit skill_path(skill.id)
    click_on 'Delete Skill'
    expect(page).to have_content 'How do you actually loose a skill?'
  end
end

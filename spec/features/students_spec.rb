require 'rails_helper'

feature 'index' do
  scenario 'list students' do
    visit(students_path)
    student = create(:student)
    expect(page).to have_content(student.name)
  end
end
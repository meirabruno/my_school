require 'rails_helper'

feature 'index' do
  scenario 'list students' do
    student = create(:student)
    visit(students_path)

    expect(page).to have_content(student.name)
    expect(page).to have_content(student.registration)
    expect(page).to have_content(student.status)
  end
end

feature 'create student' do 
  scenario 'create new student' do
    visit(new_student_path)

    fill_in 'Name', with: 'Jonny'
    fill_in 'Registration', with: 'RA123'
    fill_in 'Status', with: 1

    click_button 'Create Student'

    expect(Student.all.count).to eq(1)
  end
end
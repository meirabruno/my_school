require 'rails_helper'

describe StudentsController, type: :controller do
  
  let(:valid_attributes) { {name: "student name", registration: "RA12345", status: 1} }

  let(:invalid_attributes) { {register_number: "RA12345", status: true} }

  describe "#show" do
    it "assigns the request student as @student" do
      student = Student.create! valid_attributes
      get :show, {:id => student.to_param}
      expect(assigns(:student)).to eq(student)
    end
  end

end
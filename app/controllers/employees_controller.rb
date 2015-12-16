class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def create
    @employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
    )
    render :show
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.update(
      first_name: params[:first_name] || @employee.first_name,
      last_name: params[:last_name] || @employee.last_name,
      email: params[:email] || @employee.email,
      birthdate: params[:birthdate] || @employee.birthdate,
      ssn: params[:ssn] || @employee.ssn
    )
    render :show
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    render json: {message: "Employee successfully deleted!"}
  end
end

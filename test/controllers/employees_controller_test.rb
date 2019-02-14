require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { department: @employee.department, email: @employee.email, emp_mode: @employee.emp_mode, employee_code: @employee.employee_code, employee_id: @employee.employee_id, exprerience: @employee.exprerience, first_name: @employee.first_name, job_title: @employee.job_title, last_name: @employee.last_name, prefix: @employee.prefix, reporting_manager: @employee.reporting_manager, role: @employee.role, status: @employee.status, tel: @employee.tel } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { department: @employee.department, email: @employee.email, emp_mode: @employee.emp_mode, employee_code: @employee.employee_code, employee_id: @employee.employee_id, exprerience: @employee.exprerience, first_name: @employee.first_name, job_title: @employee.job_title, last_name: @employee.last_name, prefix: @employee.prefix, reporting_manager: @employee.reporting_manager, role: @employee.role, status: @employee.status, tel: @employee.tel } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end

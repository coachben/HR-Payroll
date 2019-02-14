json.extract! employee, :id, :employee_code, :employee_id, :prefix, :first_name, :last_name, :emp_mode, :role, :email, :department, :reporting_manager, :job_title, :exprerience, :tel, :status, :created_at, :updated_at
json.url employee_url(employee, format: :json)

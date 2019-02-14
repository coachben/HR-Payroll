class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :employee_code
      t.integer :employee_id
      t.string :prefix ,default:
      t.string :first_name
      t.string :last_name
      t.string :emp_mode
      t.string :role
      t.string :email
      t.string :department
      t.string :reporting_manager
      t.string :job_title
      t.text :exprerience
      t.integer :tel
      t.string :status

      t.timestamps
    end
  end
end

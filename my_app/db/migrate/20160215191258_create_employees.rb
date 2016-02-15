class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
  def self.down
    drop_table :employees
  end
end

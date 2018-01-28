class EmailAttributesToEngineer < ActiveRecord::Migration[5.1]
  def change
  	add_column :engineers, :email, :string
  end
end

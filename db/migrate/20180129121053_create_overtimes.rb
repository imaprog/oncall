class CreateOvertimes < ActiveRecord::Migration[5.1]
  def change
    create_table :overtimes do |t|
      t.integer   :engineer_id
      t.date      :day
      t.integer   :hours
      t.timestamps
    end

    remove_column :engineers, :email
    remove_column :engineers, :card_number
    remove_column :engineers, :gender
  end
end

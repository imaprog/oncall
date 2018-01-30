class FixOnCallWorkAttributes < ActiveRecord::Migration[5.1]
  def change
  	remove_column :on_call_works, :worker_id
  	add_column 	  :on_call_works, :engineer_id, :integer
  end
end

class CreateOnCallWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :on_call_works do |t|
      t.integer     :worker_id
      t.float       :total_hours
      t.timestamps
    end
  end
end

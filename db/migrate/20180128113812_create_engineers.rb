class CreateEngineers < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers do |t|
      t.string    :name
      t.string    :card_number
      t.string    :gender
      t.timestamps
    end
  end
end

class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :jkf
      t.string :record_hash

      t.timestamps null: false
    end
    add_index :records, :record_hash
  end
end

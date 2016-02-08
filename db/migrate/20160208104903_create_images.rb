class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :prototype_id
      t.integer :status
      t.string :content
      t.timestamps
    end
  end
end

class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :pos_karma
      t.text :neg_karma
      t.references :user
      t.integer :rating

      t.timestamps
    end
  end
end

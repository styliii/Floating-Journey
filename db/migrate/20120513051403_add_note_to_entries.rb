class AddNoteToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :note, :text
  end
end

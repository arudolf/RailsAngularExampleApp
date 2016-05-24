class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end

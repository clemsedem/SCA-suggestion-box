class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions, id: :uuid do |t|
      t.string :title
      t.text :suggestion
      t.boolean :active_status
      t.boolean :del_status

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments, id: :uuid do |t|
      t.uuid :suggestion_id
      t.text :comment
      t.boolean :active_status
      t.boolean :del_status

      t.timestamps
    end
  end
end

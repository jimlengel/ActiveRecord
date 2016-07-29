class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string   :description
      t.integer   :todo_list_id

      t.timestamps(null: false)
    end
  end
end

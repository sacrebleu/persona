class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags, id: :string, length: 36 do |t|
      t.string :author_id
      t.string :label
      t.string :value
      t.string :icon

      t.timestamps
    end

    add_foreign_key :tags, :authors
  end
end

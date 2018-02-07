class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills, id: :string, length: 36 do |t|
      t.string  :name
      t.string  :category
      t.integer :level
      t.integer :years
      t.string  :tag
      t.boolean :major, default: false
      t.boolean :suppress, default: false

      t.timestamps
    end

    create_table :facade_skills, id: :string, length: 36 do |t|
      t.string :facade_id, limit: 36
      t.string :skill_id, limit: 36
    end
  end
end

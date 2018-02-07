class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions, id: :string, length: 36 do |t|
      t.string :company_name
      t.string :company_website
      t.date :joined
      t.date :departed
      t.string :job_title
      t.text :description

      t.timestamps
    end

    create_table :position_skills, id: :string, length: 36 do |t|
      t.string :position_id, limit: 36
      t.string :skill_id, limit: 36
    end
  end
end

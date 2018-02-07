class CreateFks < ActiveRecord::Migration[5.1]
  def change

    add_foreign_key :facades, :authors, on_delete: :cascade
    add_foreign_key :certifications, :facades, on_delete: :cascade
    add_foreign_key :summaries, :facades, on_delete: :cascade

    add_foreign_key :facades_skills, :facades
    add_foreign_key :facades_skills, :skills
    add_foreign_key :facades_positions, :facades
    add_foreign_key :facades_positions, :positions
  end
end

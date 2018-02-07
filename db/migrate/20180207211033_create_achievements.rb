class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements, id: :string, limit: 36 do |t|
      t.string :position_id
      t.string :description

      t.timestamps
    end

    add_foreign_key :achievements, :positions
  end
end

class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors, id: :string, length: 36 do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :nationalities
      t.string :current_location
      t.string :degree

      t.timestamps
    end
  end
end

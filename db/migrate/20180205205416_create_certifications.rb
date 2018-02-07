class CreateCertifications < ActiveRecord::Migration[5.1]
  def change
    create_table :certifications, id: :string, length: 36 do |t|
      t.string :name
      t.string :date_of_acquisition
      t.string :icon

      t.timestamps
    end
  end
end

class CreateFacades < ActiveRecord::Migration[5.1]
  def change
    create_table :facades, id: :string, limit: 36  do |t|
      t.string :name
      t.string :description
      t.string :author_id
      t.date   :publication

      t.timestamps
    end
  end
end

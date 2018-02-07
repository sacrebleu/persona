class AddFacadeId < ActiveRecord::Migration[5.1]
  def change
    change_table :positions do |t|
      t.string :facade_id, limit: 36
    end

    add_foreign_key :positions, :facades
  end
end

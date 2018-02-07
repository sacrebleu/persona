class AddFacadeIdToCertifications < ActiveRecord::Migration[5.1]
  change_table :certifications do |t|
    t.string :facade_id, limit: 36
  end

  add_foreign_key :certifications, :facades
end

class AddFacadeIdToSummaries < ActiveRecord::Migration[5.1]
  change_table :summaries do |t|
    t.string :facade_id, limit: 36
  end

  add_foreign_key :summaries, :facades
end

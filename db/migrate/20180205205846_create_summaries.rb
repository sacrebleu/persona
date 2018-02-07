class CreateSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :summaries, id: :string, length: 36 do |t|
      t.text :description

      t.timestamps
    end
  end
end

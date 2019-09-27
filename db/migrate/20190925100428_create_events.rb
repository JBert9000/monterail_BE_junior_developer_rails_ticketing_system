class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null:false, limit: 150
      t.text :description
      t.datetime :date
      t.time :time

      t.timestamps
    end
  end
end

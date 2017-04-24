class CreatePrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :programs do |t|
      t.datetime :data
      t.string :workout
      t.string :mood
      t.string :length

      t.timestamps
    end
  end
end

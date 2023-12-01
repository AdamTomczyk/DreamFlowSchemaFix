class CreateDreams < ActiveRecord::Migration[7.1]
  def change
    create_table :dreams do |t|
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end

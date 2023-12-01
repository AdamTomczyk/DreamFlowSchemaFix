class CreateQas < ActiveRecord::Migration[7.1]
  def change
    create_table :qas do |t|
      t.string :question
      t.string :answer
      t.references :dream, null: true, foreign_key: true
      t.boolean :edit_mode, default: false

      t.timestamps
    end
  end
end

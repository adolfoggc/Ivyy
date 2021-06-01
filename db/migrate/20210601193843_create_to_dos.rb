class CreateToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :to_dos do |t|
      t.date :due_date
      t.date :completed_at
      t.boolean :finished
      t.references :user_task, null: true, foreign_key: true

      t.timestamps
    end
  end
end

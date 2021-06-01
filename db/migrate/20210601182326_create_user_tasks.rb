class CreateUserTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tasks do |t|
      t.string :description
      t.boolean :active, default: true
      t.date :first_due
      t.integer :repetition

      t.timestamps
    end
  end
end

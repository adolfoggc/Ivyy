class AddDescriptionToToDo < ActiveRecord::Migration[6.0]
  def change
    add_column :to_dos, :description, :string
  end
end

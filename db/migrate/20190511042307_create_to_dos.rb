class CreateToDos < ActiveRecord::Migration[5.2]
  def change
    create_table :to_dos do |t|
      t.string :title
      t.string :description
      t.boolean :completed
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end

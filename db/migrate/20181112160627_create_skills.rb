class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.integer :parent_id

      t.timestamps
    end
  end
end

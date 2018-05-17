class CreateSoftwares < ActiveRecord::Migration[5.2]
  def change
    create_table :softwares do |t|
      t.string :name
      t.float :cost
      t.boolean :functional
      t.references :developer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

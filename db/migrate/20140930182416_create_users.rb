class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :role
      t.references :recipe, index: true

      t.timestamps
    end
  end
end

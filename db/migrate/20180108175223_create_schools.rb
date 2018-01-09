class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :contacts

      t.timestamps
    end
  end
end

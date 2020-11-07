class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :nombre
      t.string :industria
      t.attachment :image

      t.timestamps
    end
  end
end

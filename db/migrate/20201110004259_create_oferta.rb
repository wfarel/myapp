class CreateOferta < ActiveRecord::Migration[5.2]
  def change
    create_table :oferta do |t|
      t.string :titulo
      t.string :codigo
      t.attachment :imagen
      t.string :descripcion
      t.decimal :precio

      t.timestamps
    end
  end
end

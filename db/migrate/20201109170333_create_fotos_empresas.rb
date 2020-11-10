class CreateFotosEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :fotos_empresas do |t|
      t.string :name
      t.attachment :image
      t.boolean :estado

      t.timestamps
    end
  end
end

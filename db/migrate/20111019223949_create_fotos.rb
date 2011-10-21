class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :nome
      t.string :imagem_uid
      t.string :imagem_name
      t.integer :imagem_width
      t.integer :imagem_height
      t.string :imagem_cropping

      t.timestamps
    end
  end
end

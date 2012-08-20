class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :number
      t.string :name
      t.string :image
      t.decimal :price, :precision => 8, :scale => 2
      t.text :remark

      t.timestamps
    end
  end
end

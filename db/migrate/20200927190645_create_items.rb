class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false, index: true
      t.text :description
      t.integer :price, null: false, index: true
      t.integer :discounted_price, index: true
      t.boolean :on_sale, default: false, index: true
      t.integer :discount, default: 0
      t.string :discount_type, default: 'percent'

      t.timestamps
    end
  end
end

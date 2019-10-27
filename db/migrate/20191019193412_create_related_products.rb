class CreateRelatedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :related_products, id: false do |t|
      t.integer :product_id
      t.integer :related_id

    end

    insert <<-SQL.squish
            INSERT INTO related_products
            (product_id , related_id)
            VALUES
            (1, 9),(1, 8),(1, 7),
            (2, 6),(2, 5),(2, 4),
            (3, 3),(3, 2),(3, 1),
            (4, 1),(4, 2),(4, 3),
            (5, 4),(5, 1),(5, 2),
            (6, 4),(6, 1),(6, 2),
            (7, 4),(7, 1),(7, 2),
            (8, 4),(8, 1),(8, 2),
            (9, 4),(9, 1),(9, 2)
    SQL
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :isbn
      t.decimal :totalRanking
      t.integer :numberRanking

      t.timestamps
    end
  end
end

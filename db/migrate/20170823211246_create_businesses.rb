class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :business
      t.references :city, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end

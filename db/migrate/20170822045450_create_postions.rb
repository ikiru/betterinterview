class CreatePostions < ActiveRecord::Migration[5.1]
  def change
    create_table :postions do |t|
      t.string :position

      t.timestamps
    end
  end
end

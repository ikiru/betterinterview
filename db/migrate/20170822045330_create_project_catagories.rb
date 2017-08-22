class CreateProjectCatagories < ActiveRecord::Migration[5.1]
  def change
    create_table :project_catagories do |t|
      t.string :catagory

      t.timestamps
    end
  end
end

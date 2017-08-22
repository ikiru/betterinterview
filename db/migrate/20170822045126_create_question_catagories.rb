class CreateQuestionCatagories < ActiveRecord::Migration[5.1]
  def change
    create_table :question_catagories do |t|
      t.string :catagory

      t.timestamps
    end
  end
end

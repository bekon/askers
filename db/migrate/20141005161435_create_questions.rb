class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :authorId
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end

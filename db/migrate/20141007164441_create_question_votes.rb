class CreateQuestionVotes < ActiveRecord::Migration
  def change
    create_table :question_votes do |t|
      t.integer :questionId
      t.integer :userId

      t.timestamps
    end
  end
end

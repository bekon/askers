class Relationships < ActiveRecord::Migration
  def change
    rename_column :questions, :authorId, :user_id
    rename_column :answers, :authorId, :user_id
    rename_column :answers, :questionId, :question_id
    rename_column :question_votes, :questionId, :question_id
    rename_column :question_votes, :userId, :user_id
    rename_column :answer_votes, :answerId, :answer_id
    rename_column :answer_votes, :userId, :user_id
  end
end

class CreateAnswerVotes < ActiveRecord::Migration
  def change
    create_table :answer_votes do |t|
      t.integer :answerId
      t.integer :userId

      t.timestamps
    end
  end
end

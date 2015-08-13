class QuestionVotesController < ApplicationController
  before_action :set_question_vote, only: [:show, :edit, :update, :destroy]

  # POST /question_votes
  # POST /question_votes.json
  def create
    if QuestionVote.exists?(user_id: current_user.id, question_id: params[:questionId])
      render json: 'The vote already exists', status: :unprocessable_entity
      return
    end
      
    @vote = QuestionVote.new
    @vote.user_id = current_user.id
    @vote.question_id = params[:questionId]

    respond_to do |format|
      if @vote.save
        format.json { head :no_content }
      else
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_vote
      @question_vote = QuestionVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_vote_params
      params.require(:question_vote).permit(:question_id, :user_id)
    end
end

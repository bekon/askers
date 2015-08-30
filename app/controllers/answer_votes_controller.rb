class AnswerVotesController < ApplicationController
  before_filter :authenticate_user!, only: [:create]

  # POST /answer_votes.json
  def create
    if AnswerVote.exists?(user_id: current_user.id, answer_id: params[:answerId])
      render json: { message: 'The vote already exists' }, status: :unprocessable_entity
      return
    end
      
    @vote = AnswerVote.new
    @vote.user_id = current_user.id
    @vote.answer_id = params[:qanswerId]

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
    def set_answer_vote
      @answer_vote = AnswerVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_vote_params
      params.require(:answer_vote).permit(:answerId, :user_id)
    end
end

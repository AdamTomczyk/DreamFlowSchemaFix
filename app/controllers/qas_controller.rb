class QasController < ApplicationController

  def index
    @dream = Dream.find(params[:dream_id])
    @qas = Qa.all.order(:id)
  end

  def update
    @qa = Qa.find(params[:id])
    @dream = Dream.find(params[:dream_id])
    @qa.update(answer: params[:qa][:answer], edit_mode: !@qa.edit_mode, dream: @dream)

    redirect_to dream_qas_path(@dream)
  end

 def edit_mode
   @qa = Qa.find(params[:id])
   @dream = @qa.dream
   @qa.update(edit_mode: true)
   redirect_to dream_qas_path(@dream)
 end

  private

  def qa_params
    params.require(:qa).permit(:answer)
  end
end

class QuestionsController < ApplicationController
    def index
        @questions = Question.all
        @choice = Choice
    end
    
    def show 
        @enigma = Question.find(params[:id])
        @choice = Choice
    end
    
    def new
        @questions = Question.new
    end
    
    def create
        question = Question.new(question_params)
        if question.save
            Choice.create(:id_question => question.id, :respons => params[:question][:choice_1], :choice => 1)
            Choice.create(:id_question => question.id, :respons => params[:question][:choice_2], :choice => 2)
            Choice.create(:id_question => question.id, :respons => params[:question][:choice_3], :choice => 3)
            redirect_to questions_path, notice: 'Enigma was successfully created.'
        else
          render :new
        end
    end  
    
    def destroy
        question = Question.find(params[:id])
        question.destroy
        
        choice = Choice.where(id_question: params[:id])
        choice.destroy_all

        redirect_to questions_path
    end

    private

    def question_params
        params.require(:question).permit(:question, :choice, :exp)
    end
end
    
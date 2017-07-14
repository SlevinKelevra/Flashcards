class FlashcardsController < ApplicationController
  before_action :set_flashcard, only: [:show, :edit, :update, :destroy]

  def index
    @flashcards = Flashcard.all
  end

  def new
    @flashcard = Flashcard.new
  end

  def create
    @flashcard = Flashcard.new(flashcard_params)

    if @flashcard.save
      redirect_to @flashcard
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @flashcard.update(flashcard_params)
      redirect_to @flashcard
    else
      render :edit
    end
  end


  def destroy
    @flashcard.destroy

    redirect_to flashcard_path
  end

  private

  def set_flashcard
    @flashcard = Flashcard.find(params[:id])
  end

  def flashcard_params
    params.require(:flashcard).permit(:original_text, :translated_text)
  end

end

class FlashcardsController < ApplicationController

  http_basic_authenticate_with  name: Rails.application.secrets.http_basic_user,
                                password: Rails.application.secrets.http_basic_password,
                                except: [:index, :show]

  def index
    @flashcards = Flashcard.all
  end

  def show
    @flashcard = Flashcard.find(params[:id])
  end

  def new
    @flashcard = Flashcard.new
  end

  def edit
    @flashcard = Flashcard.find(params[:id])
  end

  def create
    @flashcard = Flashcard.new(flashcard_params)

    if @flashcard.save
      redirect_to @flashcard
    else
      render 'new'
    end
  end

  def update
    @flashcard = Flashcard.find(params[:id])
    if @flashcard.update(flashcard_params)
      redirect_to @flashcard
    else
      render 'edit'
    end
  end

  def delete
    @flashcard = Flashcard.find(params[:id])
  end

  def destroy
    @flashcard = Flashcard.find(params[:id])
    @flashcard.destroy

    redirect_to flashcards_path
  end

  private
    def flashcard_params
      params.require(:flashcard).permit(:cardfront, :cardback, :cardcode)
    end

end

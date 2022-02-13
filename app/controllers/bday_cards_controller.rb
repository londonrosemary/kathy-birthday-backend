class BdayCardsController < ApplicationController
  before_action :set_bday_card, only: %i[ show update destroy ]

  # GET /bday_cards
  def index
    @bday_cards = BdayCard.all

    render json: @bday_cards
  end

  # GET /bday_cards/1
  def show
    render json: @bday_card
  end

  # POST /bday_cards
  def create
    @bday_card = BdayCard.new(bday_card_params)

    if @bday_card.save
      render json: @bday_card, status: :created, location: @bday_card
    else
      render json: @bday_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bday_cards/1
  def update
    if @bday_card.update(bday_card_params)
      render json: @bday_card
    else
      render json: @bday_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bday_cards/1
  def destroy
    @bday_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bday_card
      @bday_card = BdayCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bday_card_params
      params.require(:bday_card).permit(:name, :img64, :msg)
    end
end

class ExosController < ApplicationController
  before_action :set_exo, only: %i[ show update destroy ]

  # GET /exos
  def index
    @exos = Exo.all

    render json: @exos
  end

  # GET /exos/1
  def show
    render json: @exo
  end

  # POST /exos
  def create
    @exo = Exo.new(exo_params)

    if @exo.save
      render json: @exo, status: :created, location: @exo
    else
      render json: @exo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exos/1
  def update
    if @exo.update(exo_params)
      render json: @exo
    else
      render json: @exo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exos/1
  def destroy
    @exo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exo
      @exo = Exo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exo_params
      params.require(:exo).permit(:body)
    end
end

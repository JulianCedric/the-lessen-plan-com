class Api::V1::LoopsController < ApplicationController
  before_action :set_loop, only: [:show, :update, :destroy]

  # GET /loops
  def index
    @loops = Loop.all

    render json: @loops
  end

  # GET /loops/1
  def show
    render json: @loop
  end

  # POST /loops
  def create
    @loop = Loop.new(loop_params)

    if @loop.save
      render json: @loop, status: :created, location: @loop
    else
      render json: @loop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loops/1
  def update
    if @loop.update(loop_params)
      render json: @loop
    else
      render json: @loop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loops/1
  def destroy
    @loop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loop
      @loop = Loop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def loop_params
      params.require(:loop).permit(:desc, :type)
    end
end

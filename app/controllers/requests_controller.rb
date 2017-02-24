class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:show, :update, :destroy, :accept, :reject]

  # GET /requests
  def index
    @requests = Request.where(receiver_id: @current_user.id, status: "pending")
    render json: @requests
  end

  # GET /requests/1
  def show
    render json: @request
  end

  # POST /requests
  def create
    @request = Request.new(request_params)
    @request.sender_id = @current_user.id

    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  def accept
    if @request.accept
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entityelse
    end
  end

  def reject
    if @request.reject
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:message, :room_id, :status, :sender_id, :receiver_id)
    end
end

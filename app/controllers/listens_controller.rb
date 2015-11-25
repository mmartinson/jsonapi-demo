class ListensController < ApplicationController
  before_action :set_listen, only: [:show, :edit, :update, :destroy]

  # GET /listens
  # GET /listens.json
  def index
    @listens = Listen.all
  end

  # GET /listens/1
  # GET /listens/1.json
  def show
  end

  # GET /listens/new
  def new
    @listen = Listen.new
  end

  # GET /listens/1/edit
  def edit
  end

  # POST /listens
  # POST /listens.json
  def create
    @listen = Listen.new(listen_params)

    respond_to do |format|
      if @listen.save
        format.html { redirect_to @listen, notice: 'Listen was successfully created.' }
        format.json { render :show, status: :created, location: @listen }
      else
        format.html { render :new }
        format.json { render json: @listen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listens/1
  # PATCH/PUT /listens/1.json
  def update
    respond_to do |format|
      if @listen.update(listen_params)
        format.html { redirect_to @listen, notice: 'Listen was successfully updated.' }
        format.json { render :show, status: :ok, location: @listen }
      else
        format.html { render :edit }
        format.json { render json: @listen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listens/1
  # DELETE /listens/1.json
  def destroy
    @listen.destroy
    respond_to do |format|
      format.html { redirect_to listens_url, notice: 'Listen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listen
      @listen = Listen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listen_params
      params.require(:listen).permit(:album_id, :user_id)
    end
end

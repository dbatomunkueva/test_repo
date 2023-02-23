class JutsController < ApplicationController
  before_action :set_jut, only: %i[ show edit update destroy ]

  # GET /juts or /juts.json
  def index
    @juts = Jut.all
  end

  # GET /juts/1 or /juts/1.json
  def show
  end

  # GET /juts/new
  def new
    @jut = Jut.new
  end

  # GET /juts/1/edit
  def edit
  end

  # POST /juts or /juts.json
  def create
    @jut = Jut.new(jut_params)

    respond_to do |format|
      if @jut.save
        format.html { redirect_to jut_url(@jut), notice: "Jut was successfully created." }
        format.json { render :show, status: :created, location: @jut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /juts/1 or /juts/1.json
  def update
    respond_to do |format|
      if @jut.update(jut_params)
        format.html { redirect_to jut_url(@jut), notice: "Jut was successfully updated." }
        format.json { render :show, status: :ok, location: @jut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juts/1 or /juts/1.json
  def destroy
    @jut.destroy

    respond_to do |format|
      format.html { redirect_to juts_url, notice: "Jut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jut
      @jut = Jut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jut_params
      params.require(:jut).permit(:content, :user_id)
    end
end

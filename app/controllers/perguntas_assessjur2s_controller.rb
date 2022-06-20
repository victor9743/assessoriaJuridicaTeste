class PerguntasAssessjur2sController < ApplicationController
  before_action :set_perguntas_assessjur2, only: %i[ show edit update destroy ]

  # GET /perguntas_assessjur2s or /perguntas_assessjur2s.json
  def index
    @perguntas_assessjur2s = PerguntasAssessjur2.all
  end

  # GET /perguntas_assessjur2s/1 or /perguntas_assessjur2s/1.json
  def show
  end

  # GET /perguntas_assessjur2s/new
  def new
    @perguntas_assessjur2 = PerguntasAssessjur2.new
  end

  # GET /perguntas_assessjur2s/1/edit
  def edit
  end

  # POST /perguntas_assessjur2s or /perguntas_assessjur2s.json
  def create
    @perguntas_assessjur2 = PerguntasAssessjur2.new(perguntas_assessjur2_params)

    respond_to do |format|
      if @perguntas_assessjur2.save
        format.html { redirect_to perguntas_assessjur2_url(@perguntas_assessjur2), notice: "Perguntas assessjur2 was successfully created." }
        format.json { render :show, status: :created, location: @perguntas_assessjur2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @perguntas_assessjur2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perguntas_assessjur2s/1 or /perguntas_assessjur2s/1.json
  def update
    respond_to do |format|
      if @perguntas_assessjur2.update(perguntas_assessjur2_params)
        format.html { redirect_to perguntas_assessjur2_url(@perguntas_assessjur2), notice: "Perguntas assessjur2 was successfully updated." }
        format.json { render :show, status: :ok, location: @perguntas_assessjur2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @perguntas_assessjur2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perguntas_assessjur2s/1 or /perguntas_assessjur2s/1.json
  def destroy
    @perguntas_assessjur2.destroy

    respond_to do |format|
      format.html { redirect_to perguntas_assessjur2s_url, notice: "Perguntas assessjur2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perguntas_assessjur2
      @perguntas_assessjur2 = PerguntasAssessjur2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def perguntas_assessjur2_params
      params.require(:perguntas_assessjur2).permit(:duvida, :tel, :email, :tp_duvida, :status, :numatd)
    end
end

class PerguntasAssessjursController < ApplicationController
  before_action :set_perguntas_assessjur, only: %i[ show edit update destroy]

  # GET /perguntas_assessjurs or /perguntas_assessjurs.json
  def index
    @perguntas_assessjurs = PerguntasAssessjur.all
  end

  # GET /perguntas_assessjurs/1 or /perguntas_assessjurs/1.json
  def show
  end

  # GET /perguntas_assessjurs/new
  def new
    @perguntas_assessjur = PerguntasAssessjur.new
    @pjur = ""
    @criar  = true
    if params.has_key?(params[:id])
      @pjur = PerguntasAssessjur.where(id: params[:id])
      @s = "aqui"
    elsif PerguntasAssessjur.count > 0
      @pjur = PerguntasAssessjur.order("id DESC");
      @pjur = @pjur[0]["created_at"]
      @s = "no"
    end
    
    @count = PerguntasAssessjur.all.count
  end

  # GET /perguntas_assessjurs/1/edit
  def edit
    @pjur = ""
    @criar = false
  end

  # POST /perguntas_assessjurs or /perguntas_assessjurs.json
  def create
    @perguntas_assessjur = PerguntasAssessjur.new(perguntas_assessjur_params)

   
    respond_to do |format|
      if @perguntas_assessjur.save
        format.html { redirect_to perguntas_assessjur_url(@perguntas_assessjur), notice: "Perguntas assessjur was successfully created." }
        format.json { render :show, status: :created, location: @perguntas_assessjur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @perguntas_assessjur.errors, status: :unprocessable_entity }
      end
    end
   
  end

  # PATCH/PUT /perguntas_assessjurs/1 or /perguntas_assessjurs/1.json
  def update
    respond_to do |format|
      if @perguntas_assessjur.update(perguntas_assessjur_params)
        format.html { redirect_to perguntas_assessjur_url(@perguntas_assessjur), notice: "Perguntas assessjur was successfully updated." }
        format.json { render :show, status: :ok, location: @perguntas_assessjur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @perguntas_assessjur.errors, status: :unprocessable_entity }
      end
    end
  end

 

  # DELETE /perguntas_assessjurs/1 or /perguntas_assessjurs/1.json
  def destroy
    @perguntas_assessjur.destroy

    respond_to do |format|
      format.html { redirect_to perguntas_assessjurs_url, notice: "Perguntas assessjur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perguntas_assessjur
      @perguntas_assessjur = PerguntasAssessjur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def perguntas_assessjur_params
      params.require(:perguntas_assessjur).permit(:duvida, :tel, :email, :tp_duvida, :status, :numatd)
    end
end

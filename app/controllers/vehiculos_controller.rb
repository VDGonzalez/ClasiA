class VehiculosController < ApplicationController
  before_action :set_vehiculo, only: [:show, :edit, :update, :destroy]

  # GET /vehiculos
  # GET /vehiculos.json
  def index
    @vehiculos = Vehiculo.all
  end

  # GET /vehiculos/1
  # GET /vehiculos/1.json
  def show
  end

  # GET /vehiculos/new
  def new
    @vehiculo = Vehiculo.new
    segmento = params[:segmento]
    @caracteristicas_equipamiento = Caracteristica.where(segmento_id: segmento, tipo: 'equipamiento')
    @caracteristicas_seguridad = Caracteristica.where(segmento_id: segmento, tipo: 'seguridad')
    @caracteristicas_exterior = Caracteristica.where(segmento_id: segmento, tipo: 'exterior')
  end

  # GET /vehiculos/1/edit
  def edit
  end

  # POST /vehiculos
  # POST /vehiculos.json
  def create
    @vehiculo = Vehiculo.new(vehiculo_params)
    respond_to do |format|
      if @vehiculo.save
        format.html { redirect_to @vehiculo, notice: 'Vehiculo was successfully created.' }
        format.json { render :show, status: :created, location: @vehiculo }
      else
        format.html { render :new }
        format.json { render json: @vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehiculos/1
  # PATCH/PUT /vehiculos/1.json
  def update
    respond_to do |format|
      if @vehiculo.update(vehiculo_params)
        format.html { redirect_to @vehiculo, notice: 'Vehiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehiculo }
      else
        format.html { render :edit }
        format.json { render json: @vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehiculos/1
  # DELETE /vehiculos/1.json
  def destroy
    @vehiculo.destroy
    respond_to do |format|
      format.html { redirect_to vehiculos_url, notice: 'Vehiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehiculo
      @vehiculo = Vehiculo.find(params[:id])
      segmento = @vehiculo.segmento_id
      @caracteristicas_equipamiento = Caracteristica.where(tipo: 'equipamiento', segmento_id: segmento)
      @caracteristicas_seguridad = Caracteristica.where(tipo: 'seguridad', segmento_id: segmento)
      @caracteristicas_exterior = Caracteristica.where(tipo: 'exterior', segmento_id: segmento)
      @split_equipamiento = @vehiculo.equipamiento.split(",")
      @split_seguridad = @vehiculo.seguridad.split(",")
      @split_exterior = @vehiculo.exterior.split(",")
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def vehiculo_params
      params.require(:vehiculo).permit(:usuario_id, :agencia_id, :segmento_id, :dpto_mendoza_id, :marca_id, :modelo_id, :modeloCustom, :titulo, :anio, :kilometraje, :combustible, :precio, :condicion, :comentario, :destacado, :principal, :denunciado, :alta, :equipamiento, :seguridad, :exterior, :foto_ppal, fotos_attributes: [:id, :descripciom, :imagen, :_destroy])
    end
end

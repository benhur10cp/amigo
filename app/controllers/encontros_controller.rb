class EncontrosController < ApplicationController

  before_action :set_encontro, only: [:show, :destroy, :edit, :update]

  def index
    @encontros = Encontro.all
  end

  def new
    @encontro = Encontro.new
    @encontro.participantes.build
  end

  def create
    @encontro = Encontro.new(encontro_params)

    respond_to do |format|
      if @encontro.save
        format.html {redirect_to @encontro, notice: 'Amigo Secreto Criado'}
      else
        format.html {render :new}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @encontro.update(encontro_params)
        format.html {redirect_to @encontro, notice: 'Amigo Secreto Atualizado'}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    respond_to do |format|
      if @encontro.destroy
        format.html {redirect_to new_encontro_path, notice: 'Amigo Secreto Apagado'}
      else
        format.html {redirect_to @encontro}
      end
    end
  end

  private

  def set_encontro
    @encontro = Encontro.find(params[:id])
  end

  def encontro_params
    params.require(:encontro).permit(:id, :nome, :codigo, participantes_attributes: [:id, :nome, :email], encontro_participantes_attributes: [:id, :encontro_id, :participante_id, :_destroy])
  end

end
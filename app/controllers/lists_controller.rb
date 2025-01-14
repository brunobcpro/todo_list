class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: 'Task list was successfully created.'
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      flash[:notice] = 'Title updated successfully!'  # Mensagem de sucesso ao atualizar o título
      redirect_to @list
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    puts "Deletando a lista com ID: #{@list.id}"  # Debug
    @list.destroy
    redirect_to lists_path, notice: 'Lista deletada com sucesso.'
  end  

  private

  def list_params
    params.require(:list).permit(:name, :description)  # Incluindo o campo description
  end
end

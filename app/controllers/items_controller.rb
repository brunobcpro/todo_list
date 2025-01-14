class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_item, only: [:destroy, :toggle_status]

  def create
    @item = @list.items.new(item_params)
    if @item.save
      redirect_to list_path(@list), notice: 'Item criado com sucesso.'
    else
      redirect_to list_path(@list), alert: 'Erro ao criar item.'
    end
  end

  def destroy
    @item.destroy
    redirect_to list_path(@list), notice: 'Item deletado com sucesso.'
  end

  def toggle_status
    @item.status = @item.status == "concluído" ? "pendente" : "concluído"
    @item.save
    redirect_to list_path(@list), notice: 'Estado do item alterado com sucesso.'
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_item
    @item = @list.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :due_date, :status)
  end

  def show
    @list = List.find(params[:id])
    @items = @list.items.order("status = 'pending' DESC, id ASC") # Ordenando para mostrar primeiro os pendentes
  end
  
end

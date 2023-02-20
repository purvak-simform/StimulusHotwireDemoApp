class DragController < ApplicationController
  def item
    @genere = Genere.find(drag_item_params[:id])
    @genere.insert_at(drag_item_params[:position].to_i + 1)
  end

  private

  def drag_item_params
    params.require(:resource).permit(:id, :position)
  end
end

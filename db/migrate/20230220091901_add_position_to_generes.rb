class AddPositionToGeneres < ActiveRecord::Migration[7.0]
  def change
    add_column :generes, :position, :integer
    # if records already presists in DB then write below script for existing records
    # Genere.order(:updated_at).each.with_index(1) do |project, index|
    #   project.update_column :position, index
    # end
  end
end

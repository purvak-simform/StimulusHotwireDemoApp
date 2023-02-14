class CreateGeneres < ActiveRecord::Migration[7.0]
  def change
    create_table :generes do |t|
      t.text :name

      t.timestamps
    end
  end
end

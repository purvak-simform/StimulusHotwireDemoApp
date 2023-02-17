class CreateUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :uploads do |t|
      t.references :genere, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end

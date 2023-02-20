Add gem acts_as_list
bundle install
create a drag controller
      rails g controller drag
create stimulus controller drag
      rails g stimulus drag
create a migration to keep track of position of list
    rails g migration AddPositionToGeneres position:integer
    Write script for existing records
        # Genere.order(:updated_at).each.with_index(1) do |project, index|
        #   project.update_column :position, index
        # end
run migration
   rails db:migrate
Make changes in drag_controller.js, drag_controller.rb
Controller index action and html where drag and drop needs to add.

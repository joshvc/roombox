class AddIdentifierToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :identifier, :string
  end
end

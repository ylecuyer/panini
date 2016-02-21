class AddPictureToCars < ActiveRecord::Migration
  def up
    add_attachment :cars, :picture
  end

  def down
    remove_attachment :cars, :picture
  end
end

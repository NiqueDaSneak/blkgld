class AddAvatarToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :avatar, :string
  end
end

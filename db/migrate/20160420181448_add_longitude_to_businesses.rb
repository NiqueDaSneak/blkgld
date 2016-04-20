class AddLongitudeToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :longitude, :float
  end
end

class AddZipCodeToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :zip_code, :integer
  end
end

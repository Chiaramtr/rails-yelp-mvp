class DeleteRatingToRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :rating, :integer
  end
end

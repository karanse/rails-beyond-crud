class AddChefQuoteToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :chef_quote, :string
  end
end

class AddClaimsRepToAccident < ActiveRecord::Migration
  def change
    add_column :accidents, :claims_rep, :textarea
  end
end

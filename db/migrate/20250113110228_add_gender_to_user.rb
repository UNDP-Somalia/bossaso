class AddExtraFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :last_education_degree, :string
    add_column :users, :city, :string
    add_column :users, :village, :string
  end  
end

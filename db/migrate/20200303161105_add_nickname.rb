class AddNickname < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :nickname, :string 
    add_column :teachers, :nickname, :string 
  end
end

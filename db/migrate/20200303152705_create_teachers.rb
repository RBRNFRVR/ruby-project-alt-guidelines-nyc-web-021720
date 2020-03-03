class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name  
      t.string :quirk 
      t.integer :ranking 
    end 
  end
end

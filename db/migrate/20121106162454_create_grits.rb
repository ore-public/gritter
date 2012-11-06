class CreateGrits < ActiveRecord::Migration
  def change
    create_table :grits do |t|
      t.text :body

      t.timestamps
    end
  end
end

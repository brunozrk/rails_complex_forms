class CreateScore < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :value
      t.references :game, :player
    end
  end
end

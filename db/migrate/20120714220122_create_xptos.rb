class CreateXptos < ActiveRecord::Migration
  def change
    create_table :xptos do |t|
      t.string :a

      t.timestamps
    end
  end
end

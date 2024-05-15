class CreateSpreadAlerts < ActiveRecord::Migration[7.1]
  def change
    create_table :spread_alerts do |t|
      t.string :market_id
      t.decimal :spread

      t.timestamps
    end
    add_index :spread_alerts, :market_id, unique: true
  end
end

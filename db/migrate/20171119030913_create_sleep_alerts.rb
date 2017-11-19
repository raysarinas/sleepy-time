class CreateSleepAlerts < ActiveRecord::Migration[5.1]
  def change
    create_table :sleep_alerts do |t|
      t.integer :user_id
      t.datetime :bed_time
      t.datetime :wake_time

      t.timestamps
    end
  end
end

class CreatePaySchedules < ActiveRecord::Migration
  def change
    create_table :pay_schedules do |t|
      t.integer :pay_day
      t.integer :pay_freq_weeks
      t.integer :pay_delay_days
      t.integer :pay_month
    end
  end
end

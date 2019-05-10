class CreateWorkShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :work_shifts do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

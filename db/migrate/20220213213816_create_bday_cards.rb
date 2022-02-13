class CreateBdayCards < ActiveRecord::Migration[7.0]
  def change
    create_table :bday_cards do |t|
      t.string :name
      t.string :img64
      t.string :msg

      t.timestamps
    end
  end
end

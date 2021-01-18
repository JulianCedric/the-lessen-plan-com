class CreateLoops < ActiveRecord::Migration[6.0]
  def change
    create_table :loops do |t|
      t.string :desc
      t.string :type
      t.belongs_to :habit
      t.timestamps
    end
  end
end

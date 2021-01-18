class CreateHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :habits do |t|
      t.string :desc
      t.string :type
      t.string :string
      t.belongs_to :user
      t.timestamps
    end
  end
end

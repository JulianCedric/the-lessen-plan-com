class AddColumnsToLoopsTable < ActiveRecord::Migration[6.0]
  def change
        add_column :loops, :cue, :string
        add_column :loops, :craving, :string 
        add_column :loops, :response, :string 
        add_column :loops, :reward, :string 
  end
end

class CreateVarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :varehouses do |t|

      t.timestamps
    end
  end
end

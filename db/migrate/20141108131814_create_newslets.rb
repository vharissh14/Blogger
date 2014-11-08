class CreateNewslets < ActiveRecord::Migration
  def change
    create_table :newslets do |t|
      t.string :email

      t.timestamps
    end
  end
end

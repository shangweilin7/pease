class CreateOthers < ActiveRecord::Migration[5.0]
  def change
    create_table :others do |t|
      t.integer :will_id , :index => true
      t.string :description
      t.timestamps
    end
  end
end

class CreateExos < ActiveRecord::Migration[7.0]
  def change
    create_table :exos do |t|
      t.string :body

      t.timestamps
    end
  end
end

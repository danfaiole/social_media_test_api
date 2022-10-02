class CreateTwitters < ActiveRecord::Migration[7.0]
  def change
    create_table :twitters do |t|
      t.json :response_body

      t.timestamps
    end
  end
end

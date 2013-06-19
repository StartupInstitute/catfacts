class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.text :body

      t.timestamps
    end
  end
end

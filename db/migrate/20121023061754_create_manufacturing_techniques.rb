class CreateManufacturingTechniques < ActiveRecord::Migration
  def change
    create_table :manufacturing_techniques do |t|
      t.string :name
      t.string :description
    end
  end
end

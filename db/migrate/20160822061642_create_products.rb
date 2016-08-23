class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :fueltype
      t.integer :drivedist	
      t.integer :drivetime	
      t.integer :idletime	
      t.integer :heattime	
      t.integer :avgsp	
      t.integer :maxsp	
      t.integer :lowspt	
      t.integer :mlowspt	
      t.integer :midspt	
      t.integer :mhighspt	
      t.integer :highspt	
      t.integer :netdrivet	
      t.integer :acc7to10	
      t.integer :acc11to13	
      t.integer :acc14to17	
      t.integer :acc18	
      t.integer :dacc21	
      t.integer :dacc18to20	
      t.integer :dacc14to17	
      t.integer :dacc11to13	
      t.integer :dacc7to10

      
      t.timestamps null: false
    end
  end
end

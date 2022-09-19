class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :"name"
      t.bigint :"mobile",array:true,default:[]
      t.timestamps
    end
    add_index :users,:mobile,using:'gin'
  end
end

class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :email

      t.has_many :users through :appointments
      t.belongs_to :users


      t.timestamps
    end
  end
end

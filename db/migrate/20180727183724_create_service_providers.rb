class CreateServiceProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :service_providers do |t|
      t.string :companyName
      t.string :street
      t.string :city
      t.string :province
      t.string :postalCode
      t.string :email
      t.string :phone
      t.string :serviceType
      t.string :website
      t.boolean :license
      t.string :avatar

      t.timestamps
    end
    add_reference :service_providers, :user, index: true
  end
end

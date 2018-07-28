class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.string :description
      t.float :price
      t.boolean :accept

      t.timestamps
    end
    add_reference :proposals, :request, index: true
    add_reference :proposals, :service_provider, index: true

  end
end

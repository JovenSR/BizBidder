class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :description
      t.string :budget
      t.string :proposalDeadline
      t.date :eventDate
      t.string :address
      t.string :city
      t.string :province
      t.string :category
      t.string :status

      t.timestamps
    end
    add_reference :requests, :user, index: true
  end
end

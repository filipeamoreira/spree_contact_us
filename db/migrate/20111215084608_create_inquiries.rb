class CreateInquiries < ActiveRecord::Migration
  def self.up
    create_table :inquiries do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :contact_time
      t.string :type_inquiry
      t.string :order_number
      t.text :message
      
      t.timestamps
    end
  end

  def self.down
    drop_table :inquiries
  end
end

class InventoryCategory < ActiveRecord::Base
  #t.column :name, :string
  #t.column :description, :text
  
  attr_accessible :name, :description
  has_many :inventory_parts
  
  validates_presence_of :name
end

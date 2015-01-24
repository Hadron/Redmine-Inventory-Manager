class InventoryPart < ActiveRecord::Base
  #t.column :part_number, :string
  #t.column :manufacturer, :string
  #t.column :inventory_category_id, :integer
  #t.column :description, :text
  #t.column :value, :float
  #t.column :status, :integer
  
  has_many :inventory_movements
  belongs_to :inventory_category
  
  attr_accessible :part_number, :manufacturer, :inventory_category_id, :description, :where, :value, :status
  validates_presence_of :part_number, :inventory_category, :value, :status
  validates_uniqueness_of :part_number
end

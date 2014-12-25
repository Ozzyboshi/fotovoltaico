class Prezzi < ActiveRecord::Base
	validates :datainiziovalidita, :presence => true
	validates :datafinevalidita, :presence => true
	validates :prezzofascia1, :presence => true
	validates :prezzofascia2, :presence => true
	validates :prezzofascia3, :presence => true
	self.table_name = 'prezzi'
end

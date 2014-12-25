class Letture < ActiveRecord::Base
	validates :data, :presence => true
	validates :consumofascia1, :presence => true
	validates :consumofascia2, :presence => true
	validates :consumofascia3, :presence => true
	validates :consumofascia1periodoprecedente, :presence => true
	validates :consumofascia2periodoprecedente, :presence => true
	validates :consumofascia3periodoprecedente, :presence => true
	validates :produzionefascia1, :presence => true
	validates :produzionefascia2, :presence => true
	validates :produzionefascia3, :presence => true
	validates :immissionefascia1, :presence => true
	validates :immissionefascia2, :presence => true
	validates :immissionefascia3, :presence => true
	
	self.table_name = 'letture'
end

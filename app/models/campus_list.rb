class CampusList < ActiveRecord::Base

	self.table_name = "campuslist"
	has_one :meter

	
end

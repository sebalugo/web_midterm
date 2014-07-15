class Teacher < ActiveRecord::Base

	has_many :subjects
	accepts_nested_attributes_for :subjects

	def active_subjects
		subjects.select{|x| x.active == "active"}.size
	end

end

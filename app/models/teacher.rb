class Teacher < ActiveRecord::Base

	has_many :subjects
	accepts_nested_attributes_for :subjects , reject_if: proc { |attributes| attributes['name'].blank? }

	def active_subjects
		subjects.select{|x| x.active == "active"}.size
	end

end

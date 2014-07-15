class Teacher < ActiveRecord::Base

	validates :name , presence: true
	validates :identity , presence: true , uniqueness: true

	has_many :subjects
	accepts_nested_attributes_for :subjects , reject_if: proc { |attributes| attributes['name'].blank? || attributes['identity'].blank? || attributes['active'].blank? }

	def active_subjects
		subjects.select{|x| x.active == "active"}.size
	end

end

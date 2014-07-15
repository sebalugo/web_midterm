class Subject < ActiveRecord::Base
	belongs_to :teacher , dependent: :destroy
	validates :active, inclusion: { in: ["active", "inactive"] }
end

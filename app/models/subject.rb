class Subject < ActiveRecord::Base
	belongs_to :teacher , dependent: :destroy
end

class Qser < ActiveRecord::Base
	has_many :qlogs_qowned, class_name: "Qlog", foreign_key: "qowner_id"
	has_and_belongs_to_many :qlogs
	has_many :qosts
	has_many :qomments
end

class Qlog < ActiveRecord::Base
	belongs_to :qowner, class_name: "Qser"
	has_and_belongs_to_many :qsers
	has_many :qosts
	has_many :qomments, through: :qosts
end

class Qost < ActiveRecord::Base
	belongs_to :qser
	belongs_to :qlog
	has_many :qomments
end

class Qomment < ActiveRecord::Base
	belongs_to :qser
	belongs_to :qost
	has_one :qlog, through: :qost
end
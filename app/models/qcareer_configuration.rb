class QcareerConfiguration < ActiveRecord::Base
	def self.homepage_event
		event = nil
		conf = find_by_name("HOMEPAGE_EVENT")
		event = Event.where("status != 'over' AND slug = ?", conf.value).first if conf
		event
	end
end

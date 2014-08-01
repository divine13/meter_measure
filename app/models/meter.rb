class Meter < ActiveRecord::Base
	validates_presence_of :day   #could have chained this but I had it later 
	validates_presence_of :time
	validates_presence_of :reading
	validates_presence_of :made_at
end

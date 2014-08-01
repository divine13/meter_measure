object false
node (:success) { true }
node (:info) { "ok" }
child :data do 
	child @newer do 
		attributes :id, :day, :time, :reading, :note, :made_at
	end
end
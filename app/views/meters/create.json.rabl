object false
node (:success) {true}
node (:info) {"Meter Created"}
child :data do 
	child @meter do 
	  attributes :id, :day, :time, :reading, :note, :made_at
	end 
end
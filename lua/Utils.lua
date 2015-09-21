
--- Return the number of neighbors of a given cell that have a given
-- value in their attribute "state".
-- @arg cell A Cell.
-- @arg val A Value. If missing, this function will return the number
-- of neighbors of the Cell.
-- @usage countNeighbors(cell, "alive")
function countNeighbors(cell, val)
	if val == nil then
		return #cell:getNeighborhood()
	end

	local count = 0
	forEachNeighbor(cell, function(cell, neigh)
		if neigh.past.state == val then
			count = count + 1
		end
	end)
	return count
end

